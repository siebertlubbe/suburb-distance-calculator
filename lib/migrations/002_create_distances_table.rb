
#the class name must be the camelcased version of the filename
class CreateDistancesTable <  ActiveRecord::Migration
  def up
    create_table :distances do |t|
      t.string :from_suburb
      t.string :from_state
      t.string :to_suburb
      t.string :to_state
      t.float :distance
    end
  end

  def down
    drop_table :distances
  end
end
