class Entry < ActiveRecord::Base

  def audience
    form_for @audience do |f|
    end
  end

end
