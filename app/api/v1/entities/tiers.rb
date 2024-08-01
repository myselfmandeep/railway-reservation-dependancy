module V1
  module Entities
    class Tiers < Base
      expose :name
      expose :short_form, as: :short_name
    end
  end
end