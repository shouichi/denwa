class Denwa
  # ポケベル
  class BeeperNumber < Base
    PREFIX = '020'.freeze

    def matched?
      PREFIX == prefix
    end

    def prefix
      original[0, 3]
    end

    def infix
      original[3, 3]
    end

    def suffix
      original[6, 5]
    end
  end
end
