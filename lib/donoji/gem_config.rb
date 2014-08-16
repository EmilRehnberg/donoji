module Donoji
  class GemConfig
    def self.paths
      YAML.load_file(file_paths_config_path)
    end

    private

    def self.file_paths_config_path
      Pathname(File.expand_path('../../../config/data.yml', __FILE__))
    end
  end
end
