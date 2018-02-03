class CreateLiwenSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :liwen_samples do |t|
      t.string :name
      t.text :instructions

      t.timestamps
    end
  end
end
