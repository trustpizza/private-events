class AddAcceptanceToInvitation < ActiveRecord::Migration[7.0]
  def change
    add_column :invitations, :acceptance, :boolean, default: false
  end
end
