# frozen_string_literal: true

class Contact < ApplicationRecord
  belongs_to :kind

  def author
    'Felipe Koetz'
  end

  def kind_description
    kind.description
  end

  def as_json(_options = {})
    super(methods: %i[kind_description author], root: true, include: :kind)
  end
end
