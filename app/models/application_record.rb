class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
<<<<<<< HEAD
  
=======

>>>>>>> origin/aws-master
  def to_slug(string)
    string.parameterize.truncate(80, omission: '')
  end
end
