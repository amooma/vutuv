class Product < ActiveRecord::Base
  belongs_to :category, touch: true
  belongs_to :brand, touch: true

  has_attached_file :photo,
                    :styles => {
                                 :medium => "x300>",
                                 :thumb => "100x100>"
                               },
                    :default_url => "/images/:style/missing.png",
                    :url  => "/system/:attachment/:id/:style/:basename-:fingerprint.:extension",
                    :path => ":rails_root/public/system/:attachment/:id/:style/:basename-:fingerprint.:extension",
                    :use_timestamp => false

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def to_s
    self.name
  end

end
