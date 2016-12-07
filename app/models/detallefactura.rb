class Detallefactura < ActiveRecord::Base

	belongs_to :mascot
	belongs_to :servicio
	belongs_to :producto
	belongs_to :factura

    validates :prevenp, numericality: true
    validates :cantidad, numericality: true
	validates :factura_id, :mascot_id, :servicio_id, :producto_id, :cantidad, :prevenp, presence: true

end
