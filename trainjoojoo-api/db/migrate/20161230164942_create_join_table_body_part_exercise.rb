class CreateJoinTableBodyPartExercise < ActiveRecord::Migration[5.0]
  def change
    create_join_table :body_parts, :exercises do |t|
      # t.index [:body_part_id, :exercise_id]
      # t.index [:exercise_id, :body_part_id]
    end
  end
end
