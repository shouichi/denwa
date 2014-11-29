class Denwa
  # 携帯電話・PHS
  class MobileNumber < Base
    PREFIXES = %w(090 080 070).freeze

    def prefix_matched?
      PREFIXES.include?(prefix)
    end

    def length_matched?
      original.length == 11
    end
  end
end
