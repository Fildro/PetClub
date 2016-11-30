class Factura < ActiveRecord::Base

	belongs_to :cliente
	belongs_to :medico

end
