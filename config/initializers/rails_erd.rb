require 'rails_erd'
require 'rails_erd/domain/attribute'

module RailsERD
  class Domain
    class Attribute
      def primary_key?
        @model.primary_key == column.name
      end
    end
  end
end
