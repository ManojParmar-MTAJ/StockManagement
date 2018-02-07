class AddAttachmentImageToProduct < ActiveRecord::Migration[5.1]
  def self.up
      change_table :products do |t|
        add_attachment :products, :image
      end
    end

    def self.down
      remove_attachment :products, :image
    end
  end
