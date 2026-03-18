class Product < ApplicationRecord
    include Notifications
    belongs_to :user

    validates :terms_of_service, acceptance: true
    validates :terms_of_service, acceptance: { message: "must be agreed to" }
    has_many :subscribers, dependent: :destroy

    has_one_attached :featured_image
    has_rich_text :address
    has_rich_text :description
    validates :name, presence: true,length: { minimum: 3 }
    validates :inventory_count , numericality: { greater_than_or_equal_to: 0 }

    after_update_commit :notify_subscribers, if: :back_in_stock?

    def back_in_stock?
      inventory_count_previously_was.zero? && inventory_count.positive?
    end

    def notify_subscribers
       subscribers.each do |subscriber|
       ProductMailer.with(product: self, subscriber: subscriber).in_stock.deliver_later
       end
    end
end
