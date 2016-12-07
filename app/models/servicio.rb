class Servicio < ActiveRecord::Base

	has_many :detallefacturas, :dependent => :destroy

	#NTipo
	validates :tipose, length: { minimum: 2 }
    validates :tipose, length: { maximum: 25 }
	validates :tipose, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo Letras" }

    #Descripcion
    validates :descripcionse, length: { minimum: 2 }
    validates :descripcionse, length: { maximum: 25 }
	validates :descripcionse, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo Letras" }

    #Precio
    validates :preciose, numericality: true

	validates :tipose, :descripcionse, :preciose, presence: true

end
