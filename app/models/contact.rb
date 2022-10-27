# frozen_string_literal: true

class Contact < ApplicationRecord
  belongs_to :kind
  has_many :phones
  accepts_nested_attributes_for :phones, allow_destroy: true

  def author
    'Felipe Koetz'
  end

  def kind_description
    kind.description
  end

  def as_json(_options = {})
    super(methods: %i[kind_description author], root: true, include: [:kind, :phones])
  end
end
