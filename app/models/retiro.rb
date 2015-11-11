class Retiro < ActiveRecord::Base
  belongs_to :bodega
  belongs_to :vendedor
end
