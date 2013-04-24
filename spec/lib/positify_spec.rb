require 'spec_helper'
require 'ostruct'

describe Positify do

  describe '.it' do
    it 'makes negative numbers positive' do
      Positify.it(-5).should == 5
    end

    it 'turns 0 to 1' do
      Positify.it(0).should == 1
    end

    it 'returns 1 on non Fixnumerable objects' do
      Positify.it(OpenStruct.new).should == 1
    end

    it 'chops Floats to Fixnums' do
      Positify.it(5.9).should == 5
    end

    it 'sets a ceiling' do
      Positify.it(30, max: 22).should == 22
    end

    it 'ignores the ceiling if the value is below it ' do
      Positify.it(30, max: 35).should == 30
    end

    context 'block mode' do
      it 'makes negative numbers positive' do
        Positify.it { -5 }.should == 5
      end

      it 'sets a ceiling' do
        Positify.it(max: 25) { 30 }.should == 25
      end

      it 'ignores the ceiling if the value is below it ' do
        Positify.it(max: 35) { 30 }.should == 30
      end
    end
  end

end
