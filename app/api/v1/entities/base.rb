module V1
  module Entities
    class Base < Grape::Entity
      expose :name
      expose :short_form, as: :short_name
    end
  end
end