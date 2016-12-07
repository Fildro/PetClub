class Mascot < ActiveRecord::Base

	belongs_to :cliente
    CLASS_LIST = ["Macho", "Hembra"]
    
	#Nombre Mascota
    validates :nombrema, length: { minimum: 2 }
    validates :nombrema, length: { maximum: 25 }
	validates :nombrema, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo Letras" }

    #Raza
    validates :razama, length: { minimum: 2 }
    validates :razama, length: { maximum: 25 }
	validates :razama, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo Letras" }

    #Color
    validates :colorma, length: { minimum: 2 }
    validates :colorma, length: { maximum: 25 }
	validates :colorma, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo Letras" }

    #Sexo
    validates :sexoma, length: { minimum: 5}
    validates :sexoma, length: { maximum: 6 }
	validates :sexoma, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo Letras" }

    #Peso
    validates :pesoma, numericality: true

	validates :nombrema, :razama, :colorma, :fechanacma, :pesoma, :cliente_id, :sexoma, presence: true

end
