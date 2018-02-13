# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts")
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( components.css )
Rails.application.config.assets.precompile += %w( responsee.css )
Rails.application.config.assets.precompile += %w( icons.css )
Rails.application.config.assets.precompile += %w( owl-carousel/owl-carousel.css )
Rails.application.config.assets.precompile += %w( owl-carousel/owl-theme.css )
Rails.application.config.assets.precompile += %w( template-style.css )
Rails.application.config.assets.precompile += %w( jquery-1.8.3.min.js )
Rails.application.config.assets.precompile += %w( jquery-ui.min.js )
Rails.application.config.assets.precompile += %w( template-scripts.js )
Rails.application.config.assets.precompile += %w( responsee.js )
Rails.application.config.assets.precompile += %w( owl-carousel/owl-carousel.js )
