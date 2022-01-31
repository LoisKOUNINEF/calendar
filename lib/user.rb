class User
  attr_accessor :email, :age
  @@all_users = []

  def initialize(user_email,user_age)
    @email = user_email
    @age = user_age
    @@all_users << self
  end

  def self.all_users
    return @@all_users.to_s
  end

  def self.find_by_email(user_email)
    @@all_users.each do |x|
      if x.email == user_email
        puts "Voici l'âge de l'utilisateur : #{x.age} ans."
      end
    end
  end

end
