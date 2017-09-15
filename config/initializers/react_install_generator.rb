require 'generators/react/install_generator'
Rails.configuration.to_prepare do
  React::Generators::InstallGenerator.class_eval do
    def javascript_dir
      if webpacker?
        Webpacker.config.source_path
          .join(Webpacker.config.source_entry_path)
          .relative_path_from(::Rails.root)
          .to_s
      else
        'app/assets/javascripts'
      end
    end
  end
end
