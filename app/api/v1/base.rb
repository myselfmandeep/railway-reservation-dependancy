module V1
  class Base < Grape::API
    format :json
    VERSION = "v1"

    mount Messages
    mount Webhooks

    desc "handle any exception"
    rescue_from :all do
      error!("Something went wrong", 404)
    end

    desc "Handle Invalid Paths"
    route :any, "*path" do
      error! "Route is not found", 404
    end
    
  end
end