class AddQuesdesToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :ques_desc, :string
  end
end
