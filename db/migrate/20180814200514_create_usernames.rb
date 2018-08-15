class CreateUsernames < ActiveRecord::Migration[5.1]
  def change
    create_table :usernames do |t|
      t.string :f_name
      t.string :l_name

      t.timestamps
    end
  end
end
