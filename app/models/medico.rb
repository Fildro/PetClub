class Medico < ActiveRecord::Base

	has_many :facturas, :dependent => :destroy

end
