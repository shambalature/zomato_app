class AddAttachmentAvatarToRestaurants < ActiveRecord::Migration[6.0]
  def self.up
    change_table :restaurants do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :restaurants, :avatar
  end
end
