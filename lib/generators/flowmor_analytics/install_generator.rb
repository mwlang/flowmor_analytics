module FlowmorAnalytics
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Create a config/analytics.yml template file"
      source_root File.expand_path('../templates', __FILE__)

      def copy_config
        template "config/analytics.yml"
      end

    end
  end
end
