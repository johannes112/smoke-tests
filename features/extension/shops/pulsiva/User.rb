#pulsiva
class User
  attr_accessor :customer_number, :eMail, :password, :company, :firstname, :lastname, :prefix, :street, :streetnumber, :postcode, :city, :telephone, :store, :website_id, :store_id, :country_id, :taxvat, :organumber, :country, :owner_firstname, :owner_lastname, :backend_region_id, :registration_form_region_id
  
  def initialize
    @customer_number = case ENV['COUNTRY']
      when 'ex' then '593497053'
    end
    @eMail = case ENV['COUNTRY']
      when 'ex' then 'testmail_exp@test.de'
    end
    @password = case ENV['COUNTRY']
      when 'ex' then '123456'
    end
    @company = case ENV['COUNTRY']
      when 'ex' then 'ex_Test_eBusiness'
    end
    @taxvat = case ENV['COUNTRY']
      when 'ex' then nil
    end
    @organumber = case ENV['COUNTRY']
      when 'ex' then nil
    end
    @country = case ENV['COUNTRY']
      when 'ex' then nil
    end
    @owner_firstname = case ENV['COUNTRY']
      when 'ex' then 'Vorname'
    end
    @owner_lastname = case ENV['COUNTRY']
      when 'ex' then 'Nachname'
    end
    @firstname = case ENV['COUNTRY']
      when 'ex' then 'Vorname'
    end
    @lastname = case ENV['COUNTRY']
      when 'ex' then 'Nachname'
    end
    @prefix = case ENV['COUNTRY']
      when 'ex' then 'Herr'
    end
    @street = case ENV['COUNTRY']
      when 'ex' then 'Vegastr. 2'
    end
    @postcode = case ENV['COUNTRY']
      when 'ex' then '86637'
    end
    @city = case ENV['COUNTRY']
      when 'ex' then 'Wertingen'
    end
    @telephone = case ENV['COUNTRY']
      when 'ex' then '01234567'
    end
    @store = case ENV['COUNTRY']
      when 'ex' then 1
    end
    @store_id = case ENV['COUNTRY']
      when 'ex' then '1'
    end
    @website_id = case ENV['COUNTRY']
      when 'ex' then '1'
    end
    @country_id = case ENV['COUNTRY']
      when 'ex' then 'DE'
    end
    @backend_region_id = case ENV['COUNTRY']
      when 'ex' then 1
    end
    @registration_form_region_id = case ENV['COUNTRY']
      when 'ex' then nil
    end
    @streetnumber = case ENV['COUNTRY']
      when 'ex' then nil
    end
  end
end