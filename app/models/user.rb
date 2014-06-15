class User < ActiveRecord::Base
  has_many :help_requests
  has_many :comments

  def self.find_or_create_from_omniauth(auth)
    provider = auth.provider
    uid = auth.uid

    find_by(provider: provider, uid: uid) ||
      create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create(
      provider: auth.provider,
      uid: auth.uid,
      username: auth.info.nickname,
      email: auth.info.email,
      avatar_url: auth.info.image
    )
  end

  has_many :comments
  has_many :help_requests
end
