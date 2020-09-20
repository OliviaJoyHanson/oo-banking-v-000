require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    count = 0
    if self.valid? && count == 0
      count += 1
      @sender.balance -= @amount
      @receiver.balance += @amount
    end
  end

end
