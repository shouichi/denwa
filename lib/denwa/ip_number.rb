class Denwa
  # IP電話
  class IpNumber < Base
    PREFIX = '050'.freeze

    def prefix_matched?
      PREFIX == prefix
    end

    def length_matched?
      original.length == 11
    end
  end
end
