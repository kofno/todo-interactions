module Todos::Values
  class List
    attr_accessor :description
    private :description=

    def initialize(attributes)
      update(attributes)
    end

    def update(attributes)
      attributes.each do |attribute, value|
        self.send("#{attribute}=", value)
      end
    end
  end
end