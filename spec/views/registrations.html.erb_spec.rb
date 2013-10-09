require 'spec_helper'

describe "registrations/new" do
  subject { render }

  describe "rspec doesn't provide helper methods from ApplicationController so we stub while configuring" do
    it { should include "stubbed user" }
  end

  describe "stubbing current_user (uncomment the spec/support/sign_in.rb and this will work)" do
    before { view.stub(current_user: "another user") }
    it { should include "another user" }
  end

end
