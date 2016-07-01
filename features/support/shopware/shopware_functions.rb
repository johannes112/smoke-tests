module ShopwareFunctions
  #customers
  @shopwarestatus = 0
  
  #set suburl
  def stringGetUrlPath(data_of)
    #decide which url have to be set
    data_of = data_of.downcase
    case (data_of)
      when 'customers'
        url = "/api/customers"
      when 'orders'
        url = "/api/orders"
    end
  end
  
  #update entity of id and set key to value
  def setValue(data_of, id, key, value) 
    options = { 
      :digest_auth => @auth_digest ,
      :body => { :orderStatusId => 4}
    }
    url_data = stringGetUrlPath(data_of)
    #url_request = "#{url_data}/#{id}/#{key}/#{value}":query => { :email => "alan+thinkvitamin@carsonified.com" })
    url_request = "#{url_data}/#{id}"
    #p "PUT: #{url_request}"
    updateData(url_request, options)
  end

  #get one customer with id
  def getData(data_of, id) 
    url_data = stringGetUrlPath(data_of)
    url_request = "#{url_data}/#{id}"
    response_data = readData(url_request)
    puts response_data
    return response_data
  end
  
  #get one customer identified by its mailaddress
  #usage: delete customer with key by value and to determine order which is made by the customer
  def getCustomerIdByMail(mailaddress)
    key = "id"
    #value = mailaddress
    url_data = "/api/customers"
    filter = "?filter[email]=#{mailaddress}"
    url_request = "#{url_data}/#{filter}"
    response_data_customer = readData(url_request)
    if response_data_customer['data'][0] != nil
      customer_id_by_mail = response_data_customer['data'][0][key]
    else
      customer_id_by_mail = "no customer with #{mailaddress} exists"
    end
    return customer_id_by_mail
  end
  
  #get orderid of order
  #usage: set status of order
  def getOrderIdByCustomerId(id)
    key = "id"
    #value = mailaddress
    url_data = "/api/orders"
    filter = "?filter[customerId]=#{id}"
    url_request = "#{url_data}/#{filter}"
    #puts "url_request: #{url_request}"
    response_data_customer = readData(url_request)
    amount_total_orders = response_data_customer['total']
    counter=0
    while counter < amount_total_orders do
      puts ">>>>>> There are #{counter+1} orders and I cancel the last order only"
      customer_id_by_mail = response_data_customer['data'][counter][key]
      counter += 1
    end
    return customer_id_by_mail
  end

  #delete customer by id
  def deleteDataId(data_of, id) 
    url_data =  stringGetUrlPath(data_of)
    url_request = "#{url_data}/#{id}"
    #puts "Delete URL: #{url_request}"
    deleteData(url_request)
  end
  
  #delete customer with the given mailadress 
  def deleteCustomerByMail(mailaddress)
    #search for id of customer with help of the mail
    #use filter function to find customer_id
    determined_customer_id = getCustomerIdByMail(mailaddress)
    #if no customer exists:

    if determined_customer_id.is_a?(String)
      puts ">>>>>> No customer exist"
    else
      deleteDataId("customers", determined_customer_id)
    end
  end

  #update statusOrderId to 4 of order with order_id
  def updateOrderStatusForMail(mail) 
    #get order_id of order with customer_id with key and value 
    puts "mail: #{mail}"
    #1. get customer_id of customer with mailaddress
    #2. get order_id of order with mailaddress
    #3. get orderStatusId of order
    #4. set orderStatusId of order
    # looking for id of user which belongs to mailaddress
    #1. get customer_id by key
    customer_id = getCustomerIdByMail(mail)
    #puts "UPDATE:#{customer_id.class}"
    if customer_id.is_a?(Fixnum)
      #p "UPDATE:customer_id:#{customer_id}"
      #2. search order by mail
      order_id = getOrderIdByCustomerId(customer_id)
      #puts "UPDATE:order_id:#{order_id}"
      #set orderStatus_Id to 4 (Stoniert / Abgelehnt)
      setValue("Orders", order_id, "orderStatusId", 4)
      #puts ">> key:#{key}, value:#{value}"
      #to avoid an export of this data i have to set "orderStatusId" of the order to 4
    else
      puts ">>>>>> No User with #{mail} exists"
    end
  end
  
end