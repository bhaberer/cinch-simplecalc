require 'spec_helper'

describe Cinch::Plugins::SimpleCalc do

  include Cinch::Test

  before(:each) do
    @bot = make_bot(Cinch::Plugins::SimpleCalc)
  end

  it 'should allow users to perform simple math' do
    msg = make_message(@bot, '!math 2 + 2')
    get_replies(msg).last.
      should == 'test: 4'
  end

  it 'should strip all non numeric information from the string' do
    msg = make_message(@bot, '!math cos 2')
    get_replies(msg).last.
      should == 'test: 2'
  end

  it 'should crack wise if asked to do the impossible' do
    msg = make_message(@bot, '!math 1 / 0')
    get_replies(msg).last.
      should == 'test: Fuck you.'
  end
end
