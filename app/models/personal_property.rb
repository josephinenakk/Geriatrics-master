class PersonalProperty < ActiveRecord::Base
  attr_accessible :address_Line1, :address_Line2, :city, :item_Location, :make, :model, :notes, :notes, :notes_Collectibles_Valuable, :property_Nickname, :state, :stem_Description, :vehicles, :year, :zip
 validates_presence_of :address_Line1, :address_Line2, :city, :item_Location, :make, :model, :notes, :notes, :notes_Collectibles_Valuable, :property_Nickname, :state, :stem_Description, :vehicles, :year, :zip
end
