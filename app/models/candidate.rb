class Candidate
  include Mongoid::Document

  field :first_name
  field :last_name
  field :email
  field :contact_phone
  field :github_id
  field :twitter_id
  field :note

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

end
