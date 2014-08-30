class Denwa
  # 携帯電話・PHS
  class MobileNumber < Base
    PREFIXES = %w(090 080 070).freeze

    def matched?
      PREFIXES.include?(prefix)
    end
  end
end
