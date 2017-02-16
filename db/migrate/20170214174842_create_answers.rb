class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :body
      # t.references will generate an integer field called 'question_id' to help
      # us associate with questions. The 'foreign key:true' option
      # create a DB constraint

      # 'index: true' option adds an index on the 'question_id' field on the answers
      # table. We are likely to run queries like
      # SELECT * FROM answers WHERE question_id=14;
      # thsi query is faster with and index on 'question_id'
      t.references :question, foreign_key: true, index: true

      t.timestamps
    end
  end
end
