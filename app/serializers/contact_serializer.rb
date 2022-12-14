class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate

  belongs_to :kind do 
    link(:related) { contact_kind_url(object.kind.id) }
  end
  
  has_many :phones
  has_one :address

  meta do 
    { author: 'Felipe Henssler Koetz' }
  end
  
  def attributes(*args)
    h = super(*args)
    h[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
    h
  end
end
