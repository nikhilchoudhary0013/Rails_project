class User < ApplicationRecord
 validates :username, :email_address, presence: true
 validates :username, presence: true

 before_validation :titleize_name
 after_validation :log_errors
 before_validation :ensure_username_has_value, on: :create

 private
    def ensure_username_has_value
      if username.blank?
        self.username = email_address
      end
    end

    def set_location
      self.location = "India"
    end
 

  private
  def titleize_name
    self.username = username.downcase.titleize if username.present?
    Rails.logger.info("username titleize to #{username}")
  end

  def log_errors
    def log_errors
      if errors.any?
        Rails.logger.error("Validation failed: #{errors.full_messages.join(', ')}")
      end
    end
  end  

  after_initialize do |user|
    Rails.logger.info("You have initialized an object!")
  end

  after_find do |user|
    Rails.logger.info("You have found an object!")
  end

  has_many :products
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
