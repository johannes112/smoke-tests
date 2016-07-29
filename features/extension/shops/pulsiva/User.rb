#pulsiva
class User
  attr_accessor :customer_number, :eMail, :eMail_sec ,:password, :password_sec, :company, :company_kind, :firstname, :lastname, :department, :prefix, :prefix_sec, :street, :streetnumber, 
                :postcode, :city, :telephone, :country_id, :taxvat, :organumber, :country, :owner_firstname, :owner_lastname
  
  def initialize
    @customer_number = case ENV['COUNTRY']
      when 'de' then '20004906'
      when 'at' then '20000021'
      when 'ch' then '20000024'
      when 'it' then ''
      when 'fr' then ''
      when 'no' then ''
      when 'se' then ''
      when 'nl' then ''
      when 'be' then ''
      when 'es' then ''
    end
    @eMail = case ENV['COUNTRY']
      when 'de' then 'testmail_pde@test.de'
      when 'at' then 'testmail_pat@test.de'
      when 'ch' then 'testmail_pch@test.de'
      when 'it' then 'testmail_pit@test.de'
      when 'fr' then 'testmail_pfr@test.de'
      when 'no' then 'testmail_pno@test.de'
      when 'se' then 'testmail_pse@test.de'
      when 'nl' then 'testmail_pnl@test.de'
      when 'be' then 'testmail_pbe@test.de'
      when 'es' then 'testmail_pes@test.de'
    end
    @eMail_sec = case ENV['COUNTRY']
      when 'de' then 'testmail@pde.de'
      when 'at' then 'testmail@pat.de'
      when 'ch' then 'testmail@pch.de'
      when 'it' then 'testmail@pit.de'
      when 'fr' then 'testmail@pfr.de'
      when 'no' then 'testmail@pno.de'
      when 'se' then 'testmail@pse.de'
      when 'nl' then 'testmail@pnl.de'
      when 'be' then 'testmail@pbe.de'
      when 'es' then 'testmail@pes.de'
    end
    @password = case ENV['COUNTRY']
      when 'de' then 'Test2014'
      when 'at' then 'Test2014'
      when 'ch' then 'Test2014'
      when 'it' then 'Test2014'
      when 'fr' then 'Test2014'
      when 'no' then 'Test2014'
      when 'se' then 'Test2014'
      when 'nl' then 'Test2014'
      when 'be' then 'Test2014'
      when 'es' then 'Test2014'
    end
    @password_sec = case ENV['COUNTRY']
      when 'de' then 'Test2015'
      when 'at' then 'Test2015'
      when 'ch' then 'Test2015'
      when 'it' then 'Test2015'
      when 'fr' then 'Test2015'
      when 'no' then 'Test2015'
      when 'se' then 'Test2015'
      when 'nl' then 'Test2015'
      when 'be' then 'Test2015'
      when 'es' then 'Test2015'
    end
    @company = case ENV['COUNTRY']
      when 'de' then 'Pulsiva GmbH Test - eBusiness'
      when 'at' then 'Hotelwäsche Erwin Müller GmbH&Co. KG Pulsiva-Test-eB'
      when 'ch' then 'Pulsiva GmbH Test - eBusiness'
      when 'it' then 'Pulsiva Italy GmbH'
      when 'fr' then 'Pulsiva France'
      when 'no' then 'Pulsiva Norge'
      when 'se' then 'Pulsiva Sverige'
      when 'nl' then 'Pulsiva Nederland'
      when 'be' then 'Pulsiva Belgium'
      when 'es' then 'Pulsiva Espana'
    end
    @company_kind = case ENV['COUNTRY']
      when 'de' then 'other'
      when 'at' then 'other'
      when 'ch' then 'other'
      when 'it' then 'other'
      when 'fr' then 'other'
      when 'no' then ''
      when 'se' then ''
      when 'nl' then ''
      when 'be' then ''
      when 'es' then ''
    end
    @taxvat = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
      when 'it' then 'PULPIT25J09F205Z'
      when 'fr' then 'FR14P422P876P383'
      when 'no' then ''
      when 'se' then ''
      when 'nl' then ''
      when 'be' then ''
      when 'es' then ''
    end
    @organumber = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
      when 'it' then nil
      when 'fr' then nil
      when 'no' then ''
      when 'se' then ''
      when 'nl' then ''
      when 'be' then ''
      when 'es' then ''
    end
    @country = case ENV['COUNTRY']
      when 'de' then 'Deutschland'
      when 'at' then 'Österreich'
      when 'ch' then 'Schweiz'
      when 'it' then 'Italia'
      when 'fr' then 'France'
      when 'no' then 'Norge'
      when 'se' then 'Sverige'
      when 'nl' then 'Nederland'
      when 'be' then 'Belgique'
      when 'es' then 'Espana'
    end
    @owner_firstname = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
      when 'it' then nil
      when 'fr' then nil
      when 'no' then ''
      when 'se' then ''
      when 'nl' then ''
      when 'be' then ''
      when 'es' then ''
    end
    @owner_lastname = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
      when 'it' then nil
      when 'fr' then nil
      when 'no' then ''
      when 'se' then ''
      when 'nl' then ''
      when 'be' then ''
      when 'es' then ''
    end
    @firstname = case ENV['COUNTRY']
      when 'de' then 'Vorname'
      when 'at' then 'Vorname'
      when 'ch' then 'Vorname'
      when 'it' then 'Nome'
      when 'fr' then 'Prenom'
      when 'no' then 'Fornavn'
      when 'se' then 'Förnamn'
      when 'nl' then 'Voornaam'
      when 'be' then 'Prenom'
      when 'es' then 'Nombre'
    end
    @lastname = case ENV['COUNTRY']
      when 'de' then 'Nachname'
      when 'at' then 'Nachname'
      when 'ch' then 'Nachname'
      when 'it' then 'Cognome'
      when 'fr' then 'Nom'
      when 'no' then 'Etternavn'
      when 'se' then 'Efternamn'
      when 'nl' then 'Achternaam'
      when 'be' then 'Nom'
      when 'es' then 'Apellido'
    end
    @department = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
      when 'it' then nil
      when 'fr' then nil
      when 'no' then nil
      when 'se' then nil
      when 'nl' then nil
      when 'be' then nil
      when 'es' then nil
    end
    @prefix = case ENV['COUNTRY']
      when 'de' then 'Herr'
      when 'at' then 'Herr'
      when 'ch' then 'Herr'
      when 'it' then 'Sig'
      when 'fr' then 'Monsieur'
      when 'no' then 'Herr'
      when 'se' then 'Herr'
      when 'nl' then 'Dhr.'
      when 'be' then 'Monsieur'
      when 'es' then 'Sr.'
    end
    @prefix_sec = case ENV['COUNTRY']
      when 'de' then 'Frau'
      when 'at' then 'Frau'
      when 'ch' then 'Frau'
      when 'it' then 'Sig.ra'
      when 'fr' then 'Madame'
      when 'no' then 'Fru'
      when 'se' then 'Fru'
      when 'nl' then 'Mevr.'
      when 'be' then 'Madame'
      when 'es' then 'Sra.'
    end
    @street = case ENV['COUNTRY']
      when 'de' then 'Südwestpark'
      when 'at' then 'Schloßgasse'
      when 'ch' then 'Tramstrasse'
      when 'it' then 'Schloßgasse'
      when 'fr' then 'Rue Icare'
      when 'no' then 'Südwestpark'
      when 'se' then 'Südwestpark'
      when 'nl' then 'Südwestpark'
      when 'be' then 'Südwestpark'
      when 'es' then 'Südwestpark'
    end
    @streetnumber = case ENV['COUNTRY']
      when 'de' then '44'
      when 'at' then '4'
      when 'ch' then '7'
      when 'it' then '44'
      when 'fr' then '4'
      when 'no' then '44'
      when 'se' then '44'
      when 'nl' then '44'
      when 'be' then '44'
      when 'es' then '44'
    end
    @postcode = case ENV['COUNTRY']
      when 'de' then '90449'
      when 'at' then '4470'
      when 'ch' then '9444'
      when 'it' then '4470'
      when 'fr' then '67960'
      when 'no' then '90449'
      when 'se' then '90449'
      when 'nl' then '90449'
      when 'be' then '90449'
      when 'es' then '90449'
    end
    @city = case ENV['COUNTRY']
      when 'de' then 'Nürnberg'
      when 'at' then 'Enns'
      when 'ch' then 'Diepoldsau'
      when 'it' then 'Enns'
      when 'fr' then 'Entzheim'
      when 'no' then 'Nürnberg'
      when 'se' then 'Nürnberg'
      when 'nl' then 'Nürnberg'
      when 'be' then 'Nürnberg'
      when 'es' then 'Nürnberg'
    end
    @telephone = case ENV['COUNTRY']
      when 'de' then '01234567'
      when 'at' then '01234567'
      when 'ch' then '01234567'
      when 'it' then '01234567'
      when 'fr' then '01234567'
      when 'no' then '01234567'
      when 'se' then '01234567'
      when 'nl' then '01234567'
      when 'be' then '01234567'
      when 'es' then '01234567'
    end
  end
end