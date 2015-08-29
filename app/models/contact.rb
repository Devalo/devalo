class Contact < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :telefon, length: { minimum: 8, maximum: 8}, numericality: true
  validates :henvendelse, length: { minimum: 10, maximum: 500},
                          presence: true
  validates :navn, presence: true, length: { minimum: 4, maximum: 50 }
  validates :epost, length: { minimum: 4, too_short: "Eposten må inneholde minst 4 tegn. ", 
                              maximum: 70, too_long: "Eposten kan ikke inneholde over 70 tegn" },
                              format: { with: VALID_EMAIL_REGEX }


end
