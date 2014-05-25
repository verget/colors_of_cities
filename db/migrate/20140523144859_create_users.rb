class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :title
    end
  end
end
