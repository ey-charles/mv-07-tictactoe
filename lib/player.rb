class Player
<<<<<<< HEAD
  attr_reader :name
  attr_reader :token
=======
  attr_accessor :name, :token
>>>>>>> bbc676ab5387ac7ac5fc964dc964ab63e0846b07

  def initialize(name, token)
    @name = name
    @token = token
  end
end
