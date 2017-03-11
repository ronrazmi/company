class CreateFirstNames < ActiveRecord::Migration[5.0]
  def change
    create_table :first_names do |t|
      t.string :last_name
      t.string :title
      t.string :phone_number
      t.string :team
      t.string :university

      t.timestamps
    end
  end
end
