class CreateUserImages < ActiveRecord::Migration
  def change
    create_table :user_images do |t|
      t.references :user

      t.timestamps
    end
    add_index :user_images, :user_id
  end
end
