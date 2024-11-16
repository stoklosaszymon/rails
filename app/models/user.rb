class User < ApplicationRecord
    has_secure_password
    has_many :product_list

    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

    def as_json(options = {})
        super(options.merge(only: [ :id, :email, :username ]))
    end
end
