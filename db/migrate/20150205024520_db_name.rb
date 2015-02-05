class DbName < ActiveRecord::Migration
  def change
  	rename_column :messages, :context, :content
  end
end
