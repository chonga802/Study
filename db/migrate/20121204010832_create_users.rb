class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :netid
      t.string :email
      t.string :residnetial_college
      t.integer :grade
      t.string :course

      t.timestamps
    end
  end
end
