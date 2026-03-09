if File.exist?(Rails.root.join("config", "local_env.yml"))
  config = YAML.safe_load(File.read(Rails.root.join("config", "local_env.yml")))
  config.each do |key, value|
    ENV[key.to_s] = value.to_s
  end
end
