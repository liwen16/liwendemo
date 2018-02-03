class CreateLiwentests < ActiveRecord::Migration[5.1]
  def change
    create_table :liwentests do |t|
      t.string :name

      t.timestamps
    end
  end
end
