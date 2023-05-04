class Store < ActiveRecord::Base
  has_many :employees

  validates :name,  presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: {only_integer: true, greater_than: 0}
 # validate :carry_mens_or_womens_apparel

  def carry_mens_or_womens_apparel
    if !:womens_apparel.present? && !:mens_apparel.present?
      errors.add(:womens_apparel, "must enter field")
      errors.add(:womens_apparel, "must enter field")
    end
    if :womens_apparel == false && :mens_apparel == false 
      errors.add(:womens_apparel, "must carry an apparel line")
      errors.add(:mens_apparel, "must carry an apparel line")
    end
  end 


end
