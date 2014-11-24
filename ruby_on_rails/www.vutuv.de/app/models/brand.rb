class Brand < ActiveRecord::Base
  belongs_to :manufacturer, touch: true
  has_many :products

  def to_s
    if self.name.blank?
      self.manufacturer.to_s
    else
      self.name
    end
  end
end
