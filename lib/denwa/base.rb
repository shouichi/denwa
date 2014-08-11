class Denwa
  class Base
    attr_reader :original

    def initialize(original)
      @original = original
    end

    def prefix
      original[0, 3]
    end

    def infix
      original[3, 4]
    end

    def suffix
      original[7, 4]
    end

    def sections
      @sections ||= [prefix, infix, suffix]
    end
  end
end
