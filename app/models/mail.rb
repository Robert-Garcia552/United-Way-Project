class Mail < ApplicationRecord
    belongs_to :user
    validates :email, presence: true

    after_create_commit :welcome

    def welcome(user)
        WelcomeMailer.with(user: user).welcome.deliver_later
        sleep 1
    end

end