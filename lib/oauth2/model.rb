require 'active_record'

module OAuth2
  module Model
    autoload :BelongsToOwner, ROOT + '/oauth2/model/belongs_to_owner'
    autoload :ResourceOwner,  ROOT + '/oauth2/model/resource_owner'
    autoload :Hashing,        ROOT + '/oauth2/model/hashing'
    autoload :Authorization,  ROOT + '/oauth2/model/authorization'
    autoload :Client,         ROOT + '/oauth2/model/client'
    autoload :Schema,         ROOT + '/oauth2/model/schema'
    
    def self.find_access_token(access_token)
      Authorization.find_by_access_token_hash(OAuth2.hashify(access_token))
    end
  end
end

