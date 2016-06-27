#pulsiva
class User
  attr_accessor :customer_number, :eMail, :password, :company, :firstname, :lastname, :prefix, :street, :streetnumber, :postcode, :city, :telephone, :store, :website_id, :store_id, :country_id, :taxvat, :organumber, :country, :owner_firstname, :owner_lastname, :backend_region_id, :registration_form_region_id
  
  def initialize
    @customer_number = case ENV['COUNTRY']
      when 'de' then '20004906'
      when 'at' then '20000021'
    end
    @eMail = case ENV['COUNTRY']
      when 'de' then 'testmail_pde@test.de'
      when 'at' then 'testmail_pat@test.de'
    end
    @password = case ENV['COUNTRY']
      when 'de' then 'Test123456'
      when 'at' then 'Test123456'
    end
    @company = case ENV['COUNTRY']
      when 'de' then 'Pulsiva GmbH Test - eBusiness'
      when 'at' then 'Hotelwäsche Erwin Müller GmbH&Co. KG Pulsiva-Test-eB'
    end
    @taxvat = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
    end
    @country = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
    end
    @owner_firstname = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
    end
    @owner_lastname = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
    end
    @firstname = case ENV['COUNTRY']
      when 'de' then 'Vorname'
      when 'at' then 'Vorname'
    end
    @lastname = case ENV['COUNTRY']
      when 'de' then 'Nachname'
      when 'at' then 'Nachname'
    end
    @prefix = case ENV['COUNTRY']
      when 'de' then 'Herr'
      when 'at' then 'Herr'
    end
    @street = case ENV['COUNTRY']
      when 'de' then 'Südwestpark'
      when 'at' then 'Schloßgasse'
    end
    @postcode = case ENV['COUNTRY']
      when 'de' then '90449'
      when 'at' then '4470'
    end
    @city = case ENV['COUNTRY']
      when 'de' then 'Nürnberg'
      when 'at' then 'Enns'
    end
    @telephone = case ENV['COUNTRY']
      when 'de' then '01234567'
      when 'at' then '01234567'
    end
    @store = case ENV['COUNTRY']
      when 'de' then 1
      when 'at' then 1
    end
    @store_id = case ENV['COUNTRY']
      when 'de' then '45'
      when 'at' then '62'
    end
    @website_id = case ENV['COUNTRY']
      when 'de' then '27'
      when 'at' then '30'
    end
    @country_id = case ENV['COUNTRY']
      when 'de' then 'DE'
      when 'at' then 'AT'
    end
    @backend_region_id = case ENV['COUNTRY']
      when 'de' then 1
      when 'at' then 1
    end
    @registration_form_region_id = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
    end
    @streetnumber = case ENV['COUNTRY']
      when 'de' then '44'
      when 'at' then '4'
    end
  end
end