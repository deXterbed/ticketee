require "spec_helper"

describe Notifier do
  it "correctly sets the reply-to" do
    comment = create(:comment)
    Delayed::Worker.new.work_off(1)
    mail = ActionMailer::Base.deliveries.last
    mail.from.should eql(["ticketee+#{comment.project.id}+" + "#{comment.ticket.id}@gmail.com"])
  end
end

