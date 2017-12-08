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
      if @status = "pending" && self.valid?
        @sender.balance -= 50
        @receiver.balance += 50
        @status = "complete"
      else
    "Transaction rejected. Please check your account balance."

    end
  end

end
