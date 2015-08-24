class Subscribe < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true
  validates :email, length: { minimum: 4, too_short: "Eposten må inneholde minst 4 tegn. ", 
                              maximum: 70, too_long: "Eposten kan ikke inneholde over 70 tegn" },
                              format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
