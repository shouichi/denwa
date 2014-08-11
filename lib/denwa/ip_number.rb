class Denwa
  # IP電話
  class IpNumber < Base
    PREFIX = '050'.freeze

    def matched?
      PREFIX == prefix
    end
  end

  class MobileNumber < Base
    PREFIXES = %w(090 080 070).freeze

    def matched?
      PREFIXES.include?(prefix)
    end
  end
end
