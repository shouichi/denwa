require 'denwa/base'
require 'denwa/beeper_number'
require 'denwa/dial_q2_number'
require 'denwa/fixed_number'
require 'denwa/ip_number'
require 'denwa/mobile_number'
require 'denwa/toll_free_number'
require 'denwa/unified_number'
require 'denwa/unknown_number'
require 'denwa/version'

class Denwa
  CANDIDATES = [
    TollFreeNumber,
    IpNumber,
    MobileNumber,
    BeeperNumber,
    UnifiedNumber,
    DialQ2Number,
    FixedNumber,
    UnknownNumber,
  ].freeze

  attr_reader :original, :separator

  def initialize(original, options = {})
    @original = original
    @separator = options[:separator] || '-'
  end

  def formatted
    matched? && sections.join(separator)
  end

  def sections
    matched? && matched.sections
  end

  def matched
    @matched ||= CANDIDATES.each do |klass|
      number = klass.new(original)
      return number if number.matched?
    end
  end

  def matched?
    !!matched
  end

  def kind
    matched.class
  end

  def valid?
    number? && kind != UnknownNumber
  end

  def number?
    !!(original =~ /^[0-9]*$/)
  end
end
