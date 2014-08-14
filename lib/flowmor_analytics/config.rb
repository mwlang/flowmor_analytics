module FlowmorAnalytics
  def self.configured?
    File.exist?(yml_filename)
  end
  
  def self.yml_filename
    File.join(Rails.root, 'config', 'analytics.yml')
  end
  
  def self.setting(engine, setting)
    config.settings[Rails.env][engine.to_s][setting.to_s]
  end
  
  def self.render?(engine)
    return false unless configured?
    (config.settings[Rails.env][engine.to_s]["render"] || config.settings[Rails.env]["render"] || Rails.env.production?) && config.settings[Rails.env][engine.to_s]["site_id"]
  end
end
