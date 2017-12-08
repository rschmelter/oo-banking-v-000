class Transfer
  attr_accessor :amount, :sender, :receiver, :status

  def initialize(sender, receiver, amount)
    @amount = amount
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if @status = "complete"
        def valid? = false
      elsif @status = "pending"
      @sender.balance -= 50
      @receiver.balance += 50
      @status = "complete"
    end
  end

end
