class Medico < ActiveRecord::Base

	has_many :facturas, :dependent => :destroy
    CLASS_LIST = ["Enfermería", "Dentista", "Fisioterapia", "Odontologia", "Optometria", "Veterinario"]


	#Nombre Cliente
    validates :nombrem, length: { minimum: 2 }
    validates :nombrem, length: { maximum: 25 }
	validates :nombrem, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo Letras" }
    #Apellido Cliente
    validates :appm, length: { minimum: 2 }
    validates :appm, length: { maximum: 25 }
	validates :appm, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo Letras" }
    #Dirrecion Cliente
    validates :especialidadm, length: { minimum: 2 }
    validates :especialidadm, length: { maximum: 35 }
    #DNI Clientes
    validates :dnim, length: { is: 8 }
    validates :dnim, numericality: true

	validates :nombrem, :appm, :dnim, :especialidadm, presence: true

end
