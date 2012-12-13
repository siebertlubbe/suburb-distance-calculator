#the class name must be the camelcased version of the filename
class CreateSuburbsTable <  ActiveRecord::Migration
  def up
    create_table :suburbs do |t|
      t.string :name
      t.string :state
      t.float  :latitude
      t.float  :longitude
    end
  end

  def down
    drop_table :suburbs
  end
end
