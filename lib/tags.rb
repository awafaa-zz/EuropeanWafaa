module Tags
  extend Nanoc::Memoization

  # Collect all tags from articles
  #
  # :call-seq:
  #   all_tags(array) -> array
  #   all_tags(array, posts) -> array
  #
  # By default all posts are scanned. Add a collection to limit the
  # posts scanned. The items in the array are Nanoc::Items where the
  # +kind+ is +article+
  #
  # Returns an array of strings with the name of tags on those posts.
  def all_tags(posts=articles)
    cats = []
    posts.each do |article|
      next if article[:tags].nil?
      cats << article[:tags]
    end
    cats.flatten.compact.uniq
  end
  memoize :all_tags

  # Check if a given article has a tag
  #
  # :call-seq: has_tag?(tag, article) -> boolean
  def has_tag?(tag, article)
    if article[:tags].nil?
      false
    else
      article[:tags].include?(tag)
    end
  end

  # Find all articles with a specific tag.
  #
  # :call-seq:
  #   articles_with_tag(tag) -> array
  #   articles_with_tag(tag, posts) -> array
  #
  # By default all articles are checked. Pass in an array to limit the
  # search to a subset of articles.
  def articles_with_tag(tag, posts=articles)
    posts.select { |article| has_tag?(tag, article) }
  end
  memoize :articles_with_tag

  # Collect all articles and return them in sub-arrays by tag.
  #
  # :call-seq:
  #   articles_by_tag -> [tag, array]
  #   articles_by_tag(posts) -> [tag, array]
  #
  # By default all articles are checked. Pass in an array to limit the
  # search to a subset of articles.
  def articles_by_tag(posts=articles)
    cats = []
    all_tags.each do |cat|
      cats << [cat, articles_with_tag(cat)]
    end
    cats
  end
  memoize :articles_by_tag

  # Turn a collection of tags into HTML links.
  #
  # :call-seq:
  #   link_tags(cats) -> array
  #
  # This is ugly, but better here then in the middle of a layout.
  def link_tags(cats)
    return [] unless cats
    cats.map do |cat|
      ['<a href="/tags/', cat, '.html">', cat, '</a>'].join
    end
  end

  # Create individual pages for each tag under root/tags.
  #
  # There's no way to know in advance what tags the blog will have.
  # Instead of creating pages beforehand, we hook into the +preprocess+
  # method to run this method.
  #
  # The method gathers all tags and their accompanying articles,
  # creates a page for each tag and lists the articles for it. Each
  # article is added to nanoc's +@items+ array for further processing.
  def create_tag_pages
    articles_by_tag.each do |tag, posts|
      @items << Nanoc::Item.new(
        "<%= render('tag', :tag => '#{tag}') %>",
        {
          :title => "Posts in #{tag}",
          :h1 => "#{tag} posts",
          :posts => posts
        },
        "/tags/#{tag}",
        :binary => false
      )
    end
  end
end

include Tags
