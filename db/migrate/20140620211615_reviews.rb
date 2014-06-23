class Reviews < ActiveRecord::Migration
  def change
  	create_table :reviews do |t|
  		t.string :rating, null: false
  		t.text :body, null: false
  		t.integer :restaurant_id, null: false
  		t.timestamps
  	end
  end
end
