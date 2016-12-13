#hotelwaesche
class User
  attr_accessor :customer_number, :eMail, :eMail_sec ,:password, :password_sec, :company, :company_kind, :firstname, :lastname, :department, :prefix, :prefix_sec, :street, :streetnumber, 
                :postcode, :city, :telephone, :taxid, :taxvat, :organumber, :country, :owner_firstname, :owner_lastname, :language_change_to, :country_contraction_language_change_to
  
  def initialize
    @customer_number = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
    end
    @eMail = case ENV['COUNTRY']
      when 'de' then 'testmail_hde@test.de'
      when 'at' then 'testmail_hat@test.de'
      when 'ch' then 'testmail_hch@test.de'
    end
    @eMail_sec = case ENV['COUNTRY']
      when 'de' then 'testmail@hde.de'
      when 'at' then 'testmail@hat.de'
      when 'ch' then 'testmail@hch.de'
    end
    @password = case ENV['COUNTRY']
      when 'de' then 'Test2014'
      when 'at' then 'Test2014'
      when 'ch' then 'Test2014'
    end
    @password_sec = case ENV['COUNTRY']
      when 'de' then 'Test2015'
      when 'at' then 'Test2015'
      when 'ch' then 'Test2015'
    end
    @company = case ENV['COUNTRY']
      when 'de' then 'Test Hotelwäsche Deutschland - eBusiness'
      when 'at' then 'Test Hotelwäsche Österreich - eBusiness'
      when 'ch' then 'Test Hotelwäsche Schweiz - eBusiness'
    end
    @company_kind = case ENV['COUNTRY']
      when 'de' then 'other'
      when 'at' then 'other'
      when 'ch' then 'other'
    end
    @taxid = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
    end
    @taxvat = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
    end
    @organumber = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
    end
    @country = case ENV['COUNTRY']
      when 'de' then 'Deutschland'
      when 'at' then 'Österreich'
      when 'ch' then 'Schweiz'
    end
    @owner_firstname = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
    end
    @owner_lastname = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
    end
    @firstname = case ENV['COUNTRY']
      when 'de' then 'Vorname'
      when 'at' then 'Vorname'
      when 'ch' then 'Vorname'
    end
    @lastname = case ENV['COUNTRY']
      when 'de' then 'Nachname'
      when 'at' then 'Nachname'
      when 'ch' then 'Nachname'
    end
    @department = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
    end
    @prefix = case ENV['COUNTRY']
      when 'de' then 'Herr'
      when 'at' then 'Herr'
      when 'ch' then 'Herr'
    end
    @prefix_sec = case ENV['COUNTRY']
      when 'de' then 'Frau'
      when 'at' then 'Frau'
      when 'ch' then 'Frau'
    end
    @street = case ENV['COUNTRY']
      when 'de' then 'Südwestpark'
      when 'at' then 'Schloßgasse'
      when 'ch' then 'Tramstrasse'
    end
    @streetnumber = case ENV['COUNTRY']
      when 'de' then '44'
      when 'at' then '4'
      when 'ch' then '7'
    end
    @postcode = case ENV['COUNTRY']
      when 'de' then '90449'
      when 'at' then '4470'
      when 'ch' then '9444'
    end
    @city = case ENV['COUNTRY']
      when 'de' then 'Nürnberg'
      when 'at' then 'Enns'
      when 'ch' then 'Diepoldsau'
    end
    @telephone = case ENV['COUNTRY']
      when 'de' then '01234567'
      when 'at' then '01234567'
      when 'ch' then '01234567'
    end
    @language_change_to = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then 'Francais'
    end
    @country_contraction_language_change_to = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then 'fr'
    end 
  end
end