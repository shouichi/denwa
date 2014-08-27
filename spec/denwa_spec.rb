require 'spec_helper'

describe Denwa do
  subject { Denwa }

  describe '#formatted' do
    context 'toll free numbers' do
      it 'converts perfix 0120' do
        expect(subject.new('0120123456').formatted).to eq('0120-123-456')
      end

      it 'converts perfix 0800' do
        expect(subject.new('0800123456').formatted).to eq('0800-123-456')
      end
    end

    context 'ip numbers' do
      it 'converts perfix 050' do
        expect(subject.new('05012345678').formatted).to eq('050-1234-5678')
      end
    end

    context 'mobile numbers' do
      it 'converts perfix 090' do
        expect(subject.new('09012345678').formatted).to eq('090-1234-5678')
      end

      it 'converts perfix 080' do
        expect(subject.new('08012345678').formatted).to eq('080-1234-5678')
      end

      it 'converts perfix 070' do
        expect(subject.new('07012345678').formatted).to eq('070-1234-5678')
      end
    end

    context 'beeper numbers' do
      it 'converts perfix 020' do
        expect(subject.new('02012345678').formatted).to eq('020-123-45678')
      end
    end

    context 'unified numbers' do
      it 'converts perfix 0570' do
        expect(subject.new('0570123456').formatted).to eq('0570-123-456')
      end
    end

    context 'dial q2 numbers' do
      it 'converts perfix 0990' do
        expect(subject.new('0990123456').formatted).to eq('0990-123-456')
      end
    end

    context 'fixed numbers' do
      it 'converts perfix 03' do
        expect(subject.new('0312345678').formatted).to eq('03-1234-5678')
      end

      it 'converts perfix 099' do
        expect(subject.new('0992234567').formatted).to eq('099-223-4567')
      end

      it 'converts perfix 0997' do
        expect(subject.new('0997123456').formatted).to eq('0997-12-3456')
      end

      it 'converts perfix 09969' do
        expect(subject.new('0996912345').formatted).to eq('09969-1-2345')
      end
    end

    context 'unknow numbers' do
      it 'converts unknow prefix' do
        expect(subject.new('0000000000').formatted).to eq('000-0000-000')
      end
    end
  end

  describe '#kind' do
    context 'toll free numbers' do
      it 'converts perfix 0120' do
        expect(subject.new('0120123456').kind).to eq(Denwa::TollFreeNumber)
      end
    end

    context 'ip numbers' do
      it 'converts perfix 050' do
        expect(subject.new('05012345678').kind).to eq(Denwa::IpNumber)
      end
    end

    context 'mobile numbers' do
      it 'converts perfix 090' do
        expect(subject.new('09012345678').kind).to eq(Denwa::MobileNumber)
      end
    end

    context 'beeper numbers' do
      it 'converts perfix 020' do
        expect(subject.new('02012345678').kind).to eq(Denwa::BeeperNumber)
      end
    end

    context 'unified numbers' do
      it 'converts perfix 0570' do
        expect(subject.new('0570123456').kind).to eq(Denwa::UnifiedNumber)
      end
    end

    context 'dial q2 numbers' do
      it 'converts perfix 0990' do
        expect(subject.new('0990123456').kind).to eq(Denwa::DialQ2Number)
      end
    end

    context 'fixed numbers' do
      it 'converts perfix 03' do
        expect(subject.new('0312345678').kind).to eq(Denwa::FixedNumber)
      end
    end

    context 'unknow numbers' do
      it 'converts unknow prefix' do
        expect(subject.new('0000000000').kind).to eq(Denwa::UnknownNumber)
      end
    end
  end

  describe '#valid?' do
    context 'toll free numbers' do
      it 'converts perfix 0120' do
        expect(subject.new('0120123456').valid?).to eq(true)
      end
    end

    context 'ip numbers' do
      it 'converts perfix 050' do
        expect(subject.new('05012345678').valid?).to eq(true)
      end
    end

    context 'mobile numbers' do
      it 'converts perfix 090' do
        expect(subject.new('09012345678').valid?).to eq(true)
      end
    end

    context 'beeper numbers' do
      it 'converts perfix 020' do
        expect(subject.new('02012345678').valid?).to eq(true)
      end
    end

    context 'unified numbers' do
      it 'converts perfix 0570' do
        expect(subject.new('0570123456').valid?).to eq(true)
      end
    end

    context 'dial q2 numbers' do
      it 'converts perfix 0990' do
        expect(subject.new('0990123456').valid?).to eq(true)
      end
    end

    context 'fixed numbers' do
      it 'converts perfix 03' do
        expect(subject.new('0312345678').valid?).to eq(true)
      end

      it 'converts perfix 03' do
        expect(subject.new('033388').valid?).to eq(false)
      end
    end

    context 'unknow numbers' do
      it 'converts unknow prefix' do
        expect(subject.new('0000000000').valid?).to eq(false)
      end
    end
  end
end
