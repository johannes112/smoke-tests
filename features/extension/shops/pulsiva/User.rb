#pulsiva
class User
  attr_accessor :customer_number, :eMail, :eMail_sec ,:password, :password_sec, :company, :company_kind, :firstname, :lastname, :department, :prefix, :prefix_sec, :street, :streetnumber, 
                :postcode, :city, :telephone, :country_id, :taxvat, :organumber, :country, :owner_firstname, :owner_lastname
  
  def initialize
    @customer_number = case ENV['COUNTRY']
      when 'de' then '20004906'
      when 'at' then '20000021'
      when 'it' then ''
      when 'fr' then ''
    end
    @eMail = case ENV['COUNTRY']
      when 'de' then 'testmail_pde@test.de'
      when 'at' then 'testmail_pat@test.de'
      when 'it' then 'testmail_pit@test.de'
      when 'fr' then 'testmail_pfr@test.de'
    end
    @eMail_sec = case ENV['COUNTRY']
      when 'de' then 'testmail@pde.de'
      when 'at' then 'testmail@pat.de'
      when 'it' then 'testmail@pit.de'
      when 'fr' then 'testmail@pfr.de'
    end
    @password = case ENV['COUNTRY']
      when 'de' then 'Test2014'
      when 'at' then 'Test2014'
      when 'it' then 'Test2014'
      when 'fr' then 'Test2014'
    end
    @password_sec = case ENV['COUNTRY']
      when 'de' then 'Test2015'
      when 'at' then 'Test2015'
      when 'it' then 'Test2015'
      when 'fr' then 'Test2015'
    end
    @company = case ENV['COUNTRY']
      when 'de' then 'Pulsiva GmbH Test - eBusiness'
      when 'at' then 'Hotelwäsche Erwin Müller GmbH&Co. KG Pulsiva-Test-eB'
      when 'it' then 'Pulsiva Italy GmbH'
      when 'fr' then 'Pulsiva France'
    end
    @company_kind = case ENV['COUNTRY']
      when 'de' then 'other'
      when 'at' then 'other'
      when 'it' then 'other'
      when 'fr' then 'other'
    end
    @taxvat = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'it' then 'PULPIT25J09F205Z'
      when 'fr' then 'FR14P422P876P383'
    end
    @organumber = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'it' then nil
      when 'fr' then nil
    end
    @country = case ENV['COUNTRY']
      when 'de' then 'Deutschland'
      when 'at' then 'Österreich'
      when 'it' then 'Italia'
      when 'fr' then 'France'
    end
    @owner_firstname = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'it' then nil
      when 'fr' then nil
    end
    @owner_lastname = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'it' then nil
      when 'fr' then nil
    end
    @firstname = case ENV['COUNTRY']
      when 'de' then 'Vorname'
      when 'at' then 'Vorname'
      when 'it' then 'Nome'
      when 'fr' then 'Prénom'
    end
    @lastname = case ENV['COUNTRY']
      when 'de' then 'Nachname'
      when 'at' then 'Nachname'
      when 'it' then 'Cognome'
      when 'fr' then 'Nom'
    end
    @department = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'it' then nil
      when 'fr' then nil
    end
    @prefix = case ENV['COUNTRY']
      when 'de' then 'Herr'
      when 'at' then 'Herr'
      when 'it' then 'Sig'
      when 'fr' then 'Monsieur'
    end
    @prefix_sec = case ENV['COUNTRY']
      when 'de' then 'Frau'
      when 'at' then 'Frau'
      when 'it' then 'Sig.ra'
      when 'fr' then 'Madame'
    end
    @street = case ENV['COUNTRY']
      when 'de' then 'Südwestpark'
      when 'at' then 'Schloßgasse'
      when 'it' then 'Schloßgasse'
      when 'fr' then 'Rue Icare'
    end
    @streetnumber = case ENV['COUNTRY']
      when 'de' then '44'
      when 'at' then '4'
      when 'it' then '44'
      when 'fr' then '4'
    end
    @postcode = case ENV['COUNTRY']
      when 'de' then '90449'
      when 'at' then '4470'
      when 'it' then '4470'
      when 'fr' then '67960'
    end
    @city = case ENV['COUNTRY']
      when 'de' then 'Nürnberg'
      when 'at' then 'Enns'
      when 'it' then 'Enns'
      when 'fr' then 'Entzheim'
    end
    @telephone = case ENV['COUNTRY']
      when 'de' then '01234567'
      when 'at' then '01234567'
      when 'it' then '01234567'
      when 'fr' then '01234567'
    end
  end
end