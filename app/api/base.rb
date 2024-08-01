class Base < Grape::API
  
  mount V1::Base => "#{V1::Base::VERSION}"

end