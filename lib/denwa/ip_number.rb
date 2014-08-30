class Denwa
  # IP電話
  class IpNumber < Base
    PREFIX = '050'.freeze

    def matched?
      PREFIX == prefix
    end
  end
end
