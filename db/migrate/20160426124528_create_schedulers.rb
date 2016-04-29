class CreateSchedulers < ActiveRecord::Migration
  def change
    create_table :schedulers do |t|
      t.string:user_key
      t.string:schd_title
      t.text:schd_cont
      t.string:schd_type, limit: 1
      t.datetime:schd_st
      t.datetime:schd_ft
      t.string:schd_color
      t.integer:schd_imp
      t.string:schd_icon
      t.integer:schd_state
      
      t.timestamps null: false
    end
  end
end
