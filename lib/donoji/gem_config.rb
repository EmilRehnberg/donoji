module Donoji
  class GemConfig
    def self.paths
      paths = YAML.load_file(file_paths_config_path)
      paths.each { |key, path| paths[key] = get_full_path(path) }
      paths
    end

    private

    def self.file_paths_config_path
      get_full_path("config/data.yml")
    end

    def self.get_full_path(file_path)
      Pathname(File.expand_path("../../../#{file_path}", __FILE__))
    end
  end
end
