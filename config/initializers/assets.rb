# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += ['*.js']
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

#Compile all the assets so the icons work
#config.assets.precompile << /\.(?:svg|eot|woff|ttf)\z/

# Adding Webfonts to the Asset Pipeline
config.assets.precompile << Proc.new { |path|
  if path =~ /\.(eot|svg|ttf|woff)\z/
    true
  end
}

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
