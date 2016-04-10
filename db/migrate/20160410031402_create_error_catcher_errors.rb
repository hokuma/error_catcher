class CreateErrorCatcherErrors < ActiveRecord::Migration
  def change
    create_table :error_catcher_errors do |t|
      t.string :name
      t.string :description
      t.text :stacktrace
      t.datetime :fired_at

      t.timestamps
    end
  end
end
