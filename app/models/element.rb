class Element < ApplicationRecord

  belongs_to :tactic
  
  enum side: { friend: 1, enemy: 2, gimmick: 3 }

end
