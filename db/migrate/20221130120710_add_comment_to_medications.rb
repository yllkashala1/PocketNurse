class AddCommentToMedications < ActiveRecord::Migration[7.0]
  def change
    add_column :medications, :comment, :text
  end
end
