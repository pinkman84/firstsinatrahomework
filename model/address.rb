class Address
attr_accessor(:address, :building, :postcode, :phone)
  def initialize(options)
    @address = options['address']
    @building = options['building']
    @postcode = options['postcode']
    @phone = options['phone']
  end

  


end