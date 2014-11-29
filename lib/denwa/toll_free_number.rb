class Denwa
  # フリーダイヤル
  class TollFreeNumber < Base
    PREFIXES = %w(0120 0800).freeze

    def prefix_matched?
      PREFIXES.include?(prefix)
    end

    def length_matched?
      case prefix
      when '0120' then original.length == 10
      when '0800' then original.length == 11
      else             false
      end
    end

    def prefix
      original[0, 4]
    end

    def infix
      original[4, 3]
    end

    def suffix
      original[7, 4]
    end
  end
end
