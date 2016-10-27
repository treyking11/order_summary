class Entry < ActiveRecord::Base

  def self.options_for_platform
    ['Mobile App', 'Mobile Web','Tablet App','Tablet Web']
  end

  def audience
    form_for @audience do |f|
    end
  end

end
