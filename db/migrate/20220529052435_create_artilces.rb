class CreateArtilces < ActiveRecord::Migration[6.1]
  def change
    create_table :artilces do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
