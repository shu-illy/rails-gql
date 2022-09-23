class CreateNovels < ActiveRecord::Migration[6.1]
  def change
    create_table :novels do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.string :synopsis

      t.timestamps
    end
  end
end
