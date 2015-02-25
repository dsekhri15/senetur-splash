class ContactMessage < ActiveRecord::Base

  validates :name, :presence => true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  after_create :send_email_to_admins



private
  def send_email_to_admins
    ContactMailer.contact_form(self).deliver
  end
end
