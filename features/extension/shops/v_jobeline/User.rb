#v_jobeline
class User
  attr_accessor :customer_number, :eMail, :eMail_sec ,:password, :password_sec, :company, :company_kind, :firstname, :lastname, :department, :prefix, :prefix_sec, :street, :streetnumber, 
                :postcode, :city, :telephone, :taxid, :taxvat, :organumber, :country, :owner_firstname, :owner_lastname, :language_change_to, :country_contraction_language_change_to
  
  def initialize
    @customer_number = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
      when 'it' then nil
      when 'fr' then nil
      when 'no' then nil
      when 'se' then '20000041'
      when 'nl' then nil
      when 'be' then nil
      when 'es' then nil
    end
    @eMail = case ENV['COUNTRY']
      when 'de' then 'testmail_vjde@test.de'
      when 'at' then 'testmail_vjat@test.de'
      when 'ch' then 'testmail_vjch@test.de'
      when 'it' then 'testmail_vjit@test.de'
      when 'fr' then 'testmail_vjfr@test.de'
      when 'no' then 'testmail_vjno@test.de'
      when 'se' then 'testmail_vjse@test.de'
      when 'nl' then 'testmail_vjnl@test.de'
      when 'be' then 'testmail_vjbe@test.de'
      when 'es' then 'testmail_vjes@test.de'
    end
    @eMail_sec = case ENV['COUNTRY']
      when 'de' then 'testmail@vjde.de'
      when 'at' then 'testmail@vjat.de'
      when 'ch' then 'testmail@vjch.de'
      when 'it' then 'testmail@vjit.de'
      when 'fr' then 'testmail@vjfr.de'
      when 'no' then 'testmail@vjno.de'
      when 'se' then 'testmail@vjse.de'
      when 'nl' then 'testmail@vjnl.de'
      when 'be' then 'testmail@vjbe.de'
      when 'es' then 'testmail@vjes.de'
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
      when 'se' then 'Pulsiva Scandinavia - eBusiness '
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
      when 'no' then 'other'
      when 'se' then 'other'
      when 'nl' then 'other'
      when 'be' then 'other'
      when 'es' then 'other'
    end
    @taxid = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
      when 'it' then 'IT99999999999'
      when 'fr' then nil
      when 'no' then '9ID 204 252 MVA'
      when 'se' then '556695-9234'
      when 'nl' then '22065260'
      when 'be' then nil
      when 'es' then nil
    end
    @taxvat = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
      when 'it' then 'IT 02531440218'
      when 'fr' then 'FR14P422P876P383'
      when 'no' then '999 204 252 MVA'
      when 'se' then '556695-9234'
      when 'nl' then nil
      when 'be' then 'FR14 422 876 383'
      when 'es' then 'B63679427'
    end
    @organumber = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then nil
      when 'it' then nil
      when 'fr' then nil
      when 'no' then nil
      when 'se' then '556695-9234'
      when 'nl' then nil
      when 'be' then nil
      when 'es' then nil
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
      when 'es' then nil
    end
    @owner_firstname = case ENV['COUNTRY']
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
    @owner_lastname = case ENV['COUNTRY']
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
      when 'it' then 'Via Luigi Galvani'
      when 'fr' then 'Rue Icare'
      when 'no' then 'Konows gate'
      when 'se' then 'Hamngatan'
      when 'nl' then 'Cereslaan'
      when 'be' then 'Place du Luxembourg'
      when 'es' then 'Carrer de Roger de Llúria'
    end
    @streetnumber = case ENV['COUNTRY']
      when 'de' then '44'
      when 'at' then '4'
      when 'ch' then '7'
      when 'it' then '6/C'
      when 'fr' then '4'
      when 'no' then '5'
      when 'se' then '4'
      when 'nl' then '8'
      when 'be' then '100'
      when 'es' then '44'
    end
    @postcode = case ENV['COUNTRY']
      when 'de' then '90449'
      when 'at' then '4470'
      when 'ch' then '9444'
      when 'it' then '39100'
      when 'fr' then '67960'
      when 'no' then '0192'
      when 'se' then '211 22'
      when 'nl' then '5384 VT'
      when 'be' then '1050'
      when 'es' then '08009'
    end
    @city = case ENV['COUNTRY']
      when 'de' then 'Nürnberg'
      when 'at' then 'Enns'
      when 'ch' then 'Diepoldsau'
      when 'it' then 'Bolzano'
      when 'fr' then 'Entzheim'
      when 'no' then 'Oslo'
      when 'se' then 'Malmö'
      when 'nl' then 'Heesch'
      when 'be' then 'Ixelles'
      when 'es' then 'Barcelona'
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
    @language_change_to = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then 'Francais'
      when 'it' then nil
      when 'fr' then nil
      when 'no' then nil
      when 'se' then nil
      when 'nl' then nil
      when 'be' then 'Nederlands'
      when 'es' then nil
    end
    @country_contraction_language_change_to = case ENV['COUNTRY']
      when 'de' then nil
      when 'at' then nil
      when 'ch' then 'fr'
      when 'it' then nil
      when 'fr' then nil
      when 'no' then nil
      when 'se' then nil
      when 'nl' then nil
      when 'be' then 'nl'
      when 'es' then nil
    end 
  end
end