#chefworks
class User
  attr_accessor :customer_number, :eMail, :eMail_sec ,:password, :password_sec, :company, :firstname, :lastname, :department, :prefix, :prefix_sec, :street, :streetnumber, 
                :postcode, :city, :telephone, :store, :website_id, :store_id, :country_id, :taxvat, :organumber, :country, :owner_firstname, :owner_lastname, :backend_region_id, 
                :registration_form_region_id
  
  def initialize
    @customer_number = case ENV['COUNTRY']
      when 'de' then '593497053'
    end
    @eMail = case ENV['COUNTRY']
      when 'de' then 'testmail_chefworks@test.de'
    end
    @eMail_sec = case ENV['COUNTRY']
      when 'de' then 'testmail@chefworks.de'
    end
    @password = case ENV['COUNTRY']
      when 'de' then 'Test2014'
    end
    @password_sec = case ENV['COUNTRY']
      when 'de' then 'Test2015'
    end
    @company = case ENV['COUNTRY']
      when 'de' then 'Test_eBusiness'
    end
    @taxvat = case ENV['COUNTRY']
      when 'de' then nil
    end
    @organumber = case ENV['COUNTRY']
      when 'de' then nil
    end
    @country = case ENV['COUNTRY']
      when 'de' then 'Deutschland'
    end
    @owner_firstname = case ENV['COUNTRY']
      when 'de' then 'Vorname'
    end
    @owner_lastname = case ENV['COUNTRY']
      when 'de' then 'Nachname'
    end
    @firstname = case ENV['COUNTRY']
      when 'de' then 'Vorname'
    end
    @lastname = case ENV['COUNTRY']
      when 'de' then 'Nachname'
    end
    @department = case ENV['COUNTRY']
      when 'de' then 'eBusiness'
    end
    @prefix = case ENV['COUNTRY']
      when 'de' then 'Herr'
    end
    @prefix_sec = case ENV['COUNTRY']
      when 'de' then 'Frau'
    end
    @street = case ENV['COUNTRY']
      when 'de' then 'Vegastr. 2'
    end
    @postcode = case ENV['COUNTRY']
      when 'de' then '86637'
    end
    @city = case ENV['COUNTRY']
      when 'de' then 'Wertingen'
    end
    @telephone = case ENV['COUNTRY']
      when 'de' then '01234567'
    end
    @store = case ENV['COUNTRY']
      when 'de' then 1
    end
    @store_id = case ENV['COUNTRY']
      when 'de' then '1'
    end
    @website_id = case ENV['COUNTRY']
      when 'de' then '1'
    end
    @country_id = case ENV['COUNTRY']
      when 'de' then 'DE'
    end
    @backend_region_id = case ENV['COUNTRY']
      when 'de' then 1
    end
    @registration_form_region_id = case ENV['COUNTRY']
      when 'de' then nil
    end
    @streetnumber = case ENV['COUNTRY']
      when 'de' then nil
    end
    @taxvat = case ENV['COUNTRY']
      when 'de' then 'DE999999999'
    end
  end
end