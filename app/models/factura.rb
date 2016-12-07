class Factura < ActiveRecord::Base

	belongs_to :cliente
	belongs_to :medico
	belongs_to :detallefactura

	validates :cliente_id, :medico_id, presence: true

end
