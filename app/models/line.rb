class Line < ActiveRecord::Base
  def get_anchor 
     "line-" + self.id.to_s
  end

end
