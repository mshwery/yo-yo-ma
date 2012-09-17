class Task < ActiveRecord::Base
  
  belongs_to :list
  validates :description, :presence => true
  attr_accessible :description, :completed, :sort_order

  def to_json(options = {})
    super(options.merge(:only => [ :id, :list_id, :description, :completed, :sort_order ]))
  end

end
