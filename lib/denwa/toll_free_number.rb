class Denwa
  # フリーダイヤル
  class TollFreeNumber < Base
    PREFIXES = %w(0120 0800).freeze

    def matched?
      PREFIXES.include?(prefix)
    end

    def prefix
      original[0, 4]
    end

    def infix
      original[4, 3]
    end

    def suffix
      original[7, 3]
    end
  end
end
