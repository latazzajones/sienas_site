class CreatePhotographs < ActiveRecord::Migration
  def change
    create_table :photographs do |t|

      t.timestamps
    end
  end
end
