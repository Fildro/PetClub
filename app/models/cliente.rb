class Cliente < ActiveRecord::Base

	has_many :mascots, :dependent => :destroy
	has_many :facturas, :dependent => :destroy

end
