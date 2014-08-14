module FlowmorAnalytics
  include ActiveSupport::Configurable
  
  class Railtie < ::Rails::Railtie
    initializer "flowmor_analytics.configure_rails_initialization" do
      if FlowmorAnalytics.configured?
        FlowmorAnalytics.config.settings = YAML.load(File.read(FlowmorAnalytics.yml_filename))
      else
        FlowmorAnalytics.config.settings = {"development" => {}, "test" => {}, "production" => {}}
        Rails.logger.warn "Flowmor Analytics: Could not find #{FlowmorAnalytics.yml_filename} file"
      end
    end

    config.before_configuration do
      if config.action_view.javascript_expansions
        config.action_view.javascript_expansions[:defaults] << 'flowmor_analytics'
      end
    end
  end
end

