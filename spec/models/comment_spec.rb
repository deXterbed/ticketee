require 'spec_helper'

describe Comment do
  let(:user) { create(:user) }

  before do
    @ticket = create(:ticket)
    @ticket.watchers << user
  end

  it "notifies people through a delayed job" do
    Delayed::Job.count.should eql(0)
    @ticket.comments.create(:text => "This is a comment",
                          :user => @ticket.user)
    Delayed::Job.count.should eql(1)

    Delayed::Worker.new.work_off(1)
    Delayed::Job.count.should eql(0)

    email = ActionMailer::Base.deliveries.last
    email.to.should include(user.email)
  end
end

