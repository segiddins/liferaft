module Liferaft
  class Version
    attr_reader :major, :minor, :patch, :build

    def initialize(version_string)
      components = version_string.downcase.split(/[a-z]/)
      character = version_string.downcase.gsub(/[^a-z]/, '')

      if character.length != 1
        @major = @minor = @patch = @build = 0
        return
      end

      @major = components[0].to_i
      @minor = character.ord - 'a'.ord
      @patch = components[1].to_i / 1000
      @build = components[1].to_i % 1000
    end
  end
end
