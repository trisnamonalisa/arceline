class CreateMonas < ActiveRecord::Migration
  def change
    create_table :monas do |t|

      t.timestamps null: false
    end
  end
end
