class CreatePhoto < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.float :lattitute
      t.float :longitude
      t.timestamps
    end
  end
end
