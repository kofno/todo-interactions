module Todos::Values

  class Item
    attr_accessor :description, :list
    private :description=, :list=

    def initialize(attributes)
      @done = attributes.delete(:done) || false
      update(attributes)
    end

    def update(attributes)
      attributes.each do |attribute, value|
        send("#{attribute}=", value)
      end
    end

    def done?
      !!@done
    end
  end

end