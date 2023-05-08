class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.get_name_with_params(name)
    Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}")
  end

end
