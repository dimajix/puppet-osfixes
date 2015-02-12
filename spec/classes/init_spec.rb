require 'spec_helper'
describe 'osfixes' do

  context 'with defaults for all parameters' do
    it { should contain_class('osfixes') }
  end
end
