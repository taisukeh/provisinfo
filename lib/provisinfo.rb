require 'provisinfo/version'
require 'provisinfo/provisioning'

module Provisinfo
  def self.process(provisioninFileName)
    puts provisioninFileName
    p1 = Provisioning.new(provisioninFileName)
    puts p1.name
    
  end
end
