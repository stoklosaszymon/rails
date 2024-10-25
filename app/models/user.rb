class User < ApplicationRecord
    has_secure_password
    has_many :product_list

    def as_json(options = {})
        super(options.merge(only: [ :id, :email, :username ]))
    end
end
