class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.binary :resume

    	t.timestamps
    end
  end
end
