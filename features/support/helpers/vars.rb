class Vars
  attr_accessor :r_system, :r_country, :r_shop
  
  def initialize (r_system='dual', r_country='eu', r_shop='veg')
    @r_system = r_system
    @r_country = r_country
    @r_shop = r_shop
  end
  
  def output_var
    puts "r_system:#{r_system}"
    puts "r_country:#{r_country}"
    puts "r_shop:#{r_shop}"
  end
  
  def pulsiva?
    bool = false
    if @r_shop.match(/pulsiva/)
      puts "pulsiva"
      bool = true
    end
    return bool
  end
end

VARS_ENV = Vars.new(ENV['SYSTEM'], ENV['COUNTRY'], ENV['SHOP'])
VARS_ENV.output_var
