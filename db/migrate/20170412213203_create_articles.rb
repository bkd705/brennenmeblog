class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.text :body
      t.string :tag
      t.timestamps
    end
  end
end
