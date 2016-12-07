class Cliente < ActiveRecord::Base

    CLASS_LIST = ["Ate","Barranco","BellaVista","Breña","Callao","Carmen de la Legua","Comas","Cercado de Lima","Chorrillos","El Agustino","Jesús María","La Molina","La Perla","La Punta","La Victoria","Lince","Magdalena del Mar","Miraflores","Pueblo Libre","Puente Piedra","Rimac","San Isidro","Independencia","San Juan de Miraflores","San Luis","San Martin de Porres","San Miguel","Santiago de Surco","Surquillo","Villa María del Triunfo","San Juan de Lurigancho","Santa Rosa","Los Olivos","San Borja","Ventanilla","Villa El Savador","Santa Anita"]


	has_many :mascots, :dependent => :destroy
	has_many :facturas, :dependent => :destroy

	#Nombre Cliente
    validates :nombrecli, length: { minimum: 2 }
    validates :nombrecli, length: { maximum: 25 }
	validates :nombrecli, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo Letras" }
    #Apellido Cliente
    validates :appcli, length: { minimum: 2 }
    validates :appcli, length: { maximum: 25 }
	validates :appcli, format: { with: /\A[a-zA-Z]+\z/,
    message: "Solo Letras" }
    #Dirrecion Cliente
    validates :appcli, length: { minimum: 2 }
    validates :appcli, length: { maximum: 35 }
    #DNI Clientes
    validates :dnicli, length: { is: 8 }
    validates :dnicli, numericality: true

	validates :nombrecli, :appcli, :dnicli, :direccioncli, presence: true

end

