module V1
  class Webhooks < Grape::API

    get :webhooks do
      status 200
      present(Tier.all, with: V1::Entities::Tiers)
    end
    
  end
end