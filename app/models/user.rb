class User < ActiveRecord::Base
  has_secure_password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, length: { minimum: 4, too_short: "Eposten må inneholde minst 4 tegn. ", 
                              maximum: 70, too_long: "Eposten kan ikke inneholde over 70 tegn" },
                              format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :first_name, length: { minimum: 2, too_short: "Navn må være lengere enn 2 bokstaver.",
                                   maximum: 40, too_long: "Fornavn kan ikke være lengere enn 40 bokstaver."}




  before_save :downcase_email




  def downcase_email
    self.email = email.downcase
  end
end
