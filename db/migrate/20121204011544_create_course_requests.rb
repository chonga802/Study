class CreateCourseRequests < ActiveRecord::Migration
  def change
    create_table :course_requests do |t|

      t.timestamps
    end
  end
end
