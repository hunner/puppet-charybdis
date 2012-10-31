require 'spec_helper'

describe 'charybdis::default' do

  describe 'on a debian based os' do
    let :facts do
      {
        :osfamily       => 'Debian',
        :concat_basedir => '/var/dne'
      }
    end
    it { should contain_package('charybdis').with(
      :ensure   => 'present',
    ) }
  end

  describe 'on any other os' do
    let :facts do
      {:osfamily => 'foo'}
    end

    it 'should fail' do
      expect { subject }.to raise_error(/osfamily foo is not supported/)
    end
  end

end
