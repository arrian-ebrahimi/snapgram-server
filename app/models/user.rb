class User < ActiveRecord::Base
  def create(name)
    u = User.new
    u.name = name
    u.save
  end

  def self.get_name(id)
    @name = User.find(id).name
  end
end
