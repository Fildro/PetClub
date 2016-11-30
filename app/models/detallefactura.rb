class Detallefactura < ActiveRecord::Base

	belongs_to :mascot
	belongs_to :servicio
	belongs_to :producto
	belongs_to :factura

end
