# email 
# password_digest
# password: string virtual
# password_confirmation: string virtual 
# username
# first_name
# last_name
class User < ApplicationRecord
    has_secure_password
end
