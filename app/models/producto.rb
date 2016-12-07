class Producto < ActiveRecord::Base

	has_many :detallefacturas, :dependent => :destroy

	#Nombre
	validates :nombrep, length: { minimum: 2 }
    validates :nombrep, length: { maximum: 25 }
	validates :nombrep, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo Letras" }


	#Categoria
	validates :categoriap, length: { minimum: 2 }
    validates :categoriap, length: { maximum: 25 }
	validates :categoriap, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo Letras" }

    #Stock y Precios
    validates :stockp, numericality: true
    validates :precostop, numericality: true
    validates :prevenp, numericality: true

	validates :nombrep, :categoriap, :unidadmedidap, :stockp, :precostop, :prevenp, presence: true

end
