require "spec_helper"

describe Notifier do
  it "correctly sets the reply-to" do
    comment = create(:comment)
    mail = ActionMailer::Base.deliveries.last
    mail.from.should eql(["ticketee+#{comment.project.id}+" + "#{comment.ticket.id}@gmail.com"])
  end
end

