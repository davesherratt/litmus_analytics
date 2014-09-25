require 'spec_helper'

describe 'LitmusAnalytics instantiation' do
  it 'instantiates an Rest Client object' do
    expect {@client = LitmusAnalytics::Base.new(APIKEY, APIPASSWORD, APIHOST, APIVERSION, SSL)}.not_to raise_error
  end
end

describe LitmusAnalytics do
  before(:all) do
    @client = LitmusAnalytics::Base.new(APIKEY, APIPASSWORD, APIHOST, APIVERSION, SSL)
    random_number = rand(1 .. 5000000)
    @client.post('/Campaign', "test")
  end

  it "should return a new campaign object" do
    create_campaign = LitmusAnalytics::Campaign.create('test')
    create_campaign.should_not be_nil
  end
end
