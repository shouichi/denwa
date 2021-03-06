class Denwa
  # 統一番号
  class UnifiedNumber < Base
    PREFIX = '0570'.freeze

    def prefix_matched?
      PREFIX == prefix
    end

    def length_matched?
      original.length == 10
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
