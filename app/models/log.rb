class Log
  include Mongoid::Document
  field :hostname, :type => String
  field :service, :type => String
  field :date, :type => DateTime
  field :type, :type => String
  field :elapsedTime, :type => Integer
end
