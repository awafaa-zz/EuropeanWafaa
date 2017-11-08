require 'nanoc3/tasks'

desc "Install necessary gems"
task :gems do
    deps = %w[
        cri
        rainpress
        redcarpet
        builder
        w3c_validators
        sass
        typogruby
        systemu

    ]
    sh "gem install #{deps.join(' ')}"
end
