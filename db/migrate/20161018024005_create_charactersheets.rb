class CreateCharactersheets < ActiveRecord::Migration[5.0]
  def change
    create_table :charactersheets do |t|
      t.string :player_name,    null: false
      t.string :character_name, null: false
      t.integer :ability_str
      t.integer :ability_dex
      t.integer :ability_con
      t.integer :ability_int
      t.integer :ability_wis
      t.integer :ability_cha   # these are not known at creation so can be null .... right? FUUUCK
      t.integer :bonus_str
      t.integer :bonus_dex
      t.integer :bonus_con
      t.integer :bonus_int
      t.integer :bonus_wis
      t.integer :bonus_cha

      t.timestamps              null: false
    end

    add_index :charactersheets, :player_name, unique: false # uhhhh because players can have multiple characters? i think that's what this does
    add_index :charactersheets, :character_name, unique: true # I just put these in cause it was in the book honestly
    # how obvious is it that I have very little idea what is happening?
    # PS stop writing code while drinking
  end
end
