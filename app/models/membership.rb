class Membership
  include Toy::Mongo
  adapter :mongo, Swordfish::Application.config.mongo['memberships'], :safe => true

  attribute :team_id, BSON::ObjectId
  attribute :user_id, BSON::ObjectId
  attribute :key,     String
end
