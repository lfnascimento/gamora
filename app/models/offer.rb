class Offer < ApplicationRecord

  enum status: { disabled: 0, enabled: 1 }

  validates :advertiser_name, :url, :description, :starts_at, :status, presence: true
  validates :advertiser_name, uniqueness: true
  validates :description, length: { maximum: 500 }
  validates :url, url: true

  scope :active, -> { where(status: :enabled ) }

  def active!
    enabled! if can_be_enabled? 
  end

  private

  def can_be_enabled?
    ends_at.blank? || (DateTime.current >= starts_at && DateTime.current <= ends_at)
  end

end
