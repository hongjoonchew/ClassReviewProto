class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
    
    def self.search(search)
        
        if search
            find(:all, :conditions => ['name LIKE?', "%#{params:search}%"])
        else
            find(:all)
        end
    end
end
