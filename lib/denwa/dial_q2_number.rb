class Denwa
  # ダイヤルキュー２
  class DialQ2Number < Base
    PREFIX = '0990'.freeze

    def matched?
      PREFIX == prefix
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
