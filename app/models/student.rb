class Student < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :password

  def self.to_csv(students, options = {})
    CSV.generate(options) do |csv|
      csv << ["Mails", "Date d'enregistrement"]
      students.each_with_index do |visitor, i|
        csv << [visitor.email, visitor.created_at]
      end
    end
  end
end
