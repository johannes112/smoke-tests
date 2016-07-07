#export
class User
  attr_accessor :customer_number, :eMail, :eMail_sec ,:password, :password_sec, :company, :company_kind, :firstname, :lastname, :department, :prefix, :prefix_sec, :street, :streetnumber, 
                :postcode, :city, :telephone, :store, :store_id, :taxvat, :organumber, :country, :owner_firstname, :owner_lastname, 
  
  def initialize
    @customer_number = case ENV['COUNTRY']
      when '*' then nil
    end
    @eMail = case ENV['COUNTRY']
      when '*' then 'testmail_emg@test.de'
    end
    @eMail_sec = case ENV['COUNTRY']
      when '*' then 'testmail@emg.de'
    end
    @password = case ENV['COUNTRY']
      when '*' then 'Test2014'
    end
    @password_sec = case ENV['COUNTRY']
      when '*' then 'Test2015'
    end
    @company = case ENV['COUNTRY']
      when '*' then 'ex_Test_eBusiness'
    end
    @company_kind = case ENV['COUNTRY']
      when '*' then nil
    end
   @taxvat = case ENV['COUNTRY']
      when '*' then nil
    end
    @organumber = case ENV['COUNTRY']
      when '*' then nil
    end
    @country = case ENV['COUNTRY']
      when '*' then 'Togo'
    end
    @department = case ENV['COUNTRY']
      when '*' then 'eBusiness'
    end
    @owner_firstname = case ENV['COUNTRY']
      when '*' then 'Vorname'
    end
    @owner_lastname = case ENV['COUNTRY']
      when '*' then 'Nachname'
    end
    @firstname = case ENV['COUNTRY']
      when '*' then 'Vorname'
    end
    @lastname = case ENV['COUNTRY']
      when '*' then 'Nachname'
    end
    @prefix = case ENV['COUNTRY']
      when '*' then 'Herr'
    end
    @prefix_sec = case ENV['COUNTRY']
      when '*' then 'Frau'
    end
    @street = case ENV['COUNTRY']
      when '*' then 'Vegastr. 2'
    end
    @postcode = case ENV['COUNTRY']
      when '*' then '86637'
    end
    @city = case ENV['COUNTRY']
      when '*' then 'Wertingen'
    end
    @telephone = case ENV['COUNTRY']
      when '*' then '01234567'
    end
    @store = case ENV['COUNTRY']
      when '*' then 1
    end
    @store_id = case ENV['COUNTRY']
      when '*' then '1'
    end
    @streetnumber = case ENV['COUNTRY']
      when '*' then nil
    end
  end
end