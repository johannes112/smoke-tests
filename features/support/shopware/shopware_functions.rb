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
  def setValueToCancel(data_of, id, key) 
    options = { 
      :digest_auth => @auth_digest ,
      :body => { :orderStatusId => -1}
    }
    url_data = stringGetUrlPath(data_of)
    url_request = "#{url_data}/#{id}"
    updateData(url_request, options)
  end

  #get one customer with id
  def getData(data_of, id) 
    url_data = stringGetUrlPath(data_of)
    url_request = "#{url_data}/#{id}"
    response_data = readData(url_request)
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
  def getAndCancelOrderIdByCustomerId(id)
    key = "id"
    #value = mailaddress
    url_data = "/api/orders"
    filter = "?filter[customerId]=#{id}"
    url_request = "#{url_data}/#{filter}"
    response_data_customer = readData(url_request)
    amount_total_orders = response_data_customer['total']
    counter=0
    while counter < amount_total_orders do
      customer_id_by_mail = response_data_customer['data'][counter][key]
      puts ">>>>>> cancel order with id:#{customer_id_by_mail}"
      setValueToCancel("Orders", customer_id_by_mail, "orderStatusId")
      counter += 1
    end
    return customer_id_by_mail
  end

  #delete customer by id
  def deleteDataId(data_of, id) 
    url_data =  stringGetUrlPath(data_of)
    url_request = "#{url_data}/#{id}"
    puts ">>>>>> delete customer with id:#{id}"
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
    # looking for id of user which belongs to mailaddress
    #1. get customer_id by key
    customer_id = getCustomerIdByMail(mail)
    #puts "UPDATE:#{customer_id.class}"
    if customer_id.is_a?(Fixnum)
      #2. search order by mail
      getAndCancelOrderIdByCustomerId(customer_id)
      #set orderStatus_Id to -1 (Stoniert / Abgelehnt)
      #to avoid an export of this data i have to set "orderStatusId" of the order to -1
    else
      puts ">>>>>> No User with #{mail} exists"
    end
  end
  
end