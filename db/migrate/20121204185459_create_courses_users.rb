class CreateCoursesUsers < ActiveRecord::Migration
  def up
    create_table :courses_users do |t|
      t.integer  :course_id
      t.integer  :user_id
    end
  end

  def down
    drop_table :courses_users
  end
end
