class Transfer
  attr_accessor :amount, :sender, :receiver

  def initialize(amount, sender, receiver)
    @amount = amount
    @sender = sender
    @receiver = receiver
  end

end
