class DropAllTables < ActiveRecord::Migration[5.2]
    def up
        drop_table :buyers
        drop_table :listings
        drop_table :profiles
        drop_table :users
    end

    def down
        raise ActiveRecord::IrreversibleMigration
    end
end
