module Liferaft
  def self.version_string_create(major, minor, patch, build = 0)
    "#{major}#{(minor + 'A'.ord).chr}#{patch * 1000 + build}"
  end

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

    def >(other)
      other < self
    end

    def >=(other)
      other < self || other == self
    end

    def <(other)
      return true if major < other.major
      return true if minor < other.minor
      return true if patch < other.patch
      build < other.build
    end

    def <=(other)
      self < other || other == self
    end

    def ==(other)
      other.instance_of?(self.class) &&
        major == other.major && minor == other.minor &&
        patch == other.patch && build == other.build
    end
  end
end
