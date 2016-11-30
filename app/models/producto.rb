class Producto < ActiveRecord::Base

	has_many :detallefacturas, :dependent => :destroy

end
