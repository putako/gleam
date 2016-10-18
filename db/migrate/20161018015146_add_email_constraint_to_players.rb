class AddEmailConstraintToPlayers < ActiveRecord::Migration[5.0]
  def up
  	execute %{
  		ALTER TABLE
  			players
		ADD CONSTRAINT
			email_must_be_buttcheese
		CHECK ( email ~* '^[^@]+@buttcheese\\.com' )
  	}
  end
  def down
  	execute %{
  		ALTER TABLE
  			players
  		DROP CONSTRAINT
  			email_must_be_buttcheese
  	}
  end
end
