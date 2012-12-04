class ChangeUsersGradeToClassYear < ActiveRecord::Migration
  def up
    rename_column :users, :grade, :class_year
    rename_column :users, :residnetial_college, :residential_college
  end

  def down
    rename_column :users, :class_year, :grade
    rename_column :users, :residential_college, :residnetial_college
  end
end
