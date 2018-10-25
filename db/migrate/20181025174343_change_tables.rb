class ChangeTables < ActiveRecord::Migration[5.2]
  def change
    change_table :assemblies do |t|
      t.belongs_to :parts
    end

    change_table :parts do |t|
      t.belongs_to :assemblies
    end
  end
end
