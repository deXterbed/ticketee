FactoryGirl.define do
  factory :comment do
    text "A plain old boring comment."
    ticket { |t| t.association(:ticket)  }
    user { |u| u.association(:user)  }
  end

  factory :project do
    name 'Ticketee'
  end

  factory :ticket do
    title "A ticket"
    description "A ticket, nothing more"
    user { |u| u.association(:user) }
    project { |p| p.association(:project) }
  end

  factory :user do
    sequence(:email) { |n| "user#{n}@ticketee.com"}
    password "password"
    password_confirmation "password"
  end
end


