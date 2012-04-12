class Host
  include Mongoid::Document
  field :hostname, :type => String
  field :service, :type => String
end
