class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :body, limit: 500, null: false
      t.references :author, foreign_key: { to_table: :clients }, null: false
      t.references :target, polymorphic: true, null: false
    end
  end
end
