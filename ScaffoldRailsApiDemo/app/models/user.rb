class User < ApplicationRecord
    has_many :posts
    validates :name, presence: true
    before_create -> {self.token=generate_token}
    

    private
    def generate_token
        loop do
        tempToken= SecureRandom.hex(16)
        return tempToken unless User.exists?({token: tempToken})
        end
    end    

end