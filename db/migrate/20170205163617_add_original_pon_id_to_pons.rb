class AddOriginalPonIdToPons < ActiveRecord::Migration
  def change
    add_column :pons, :original_pon_id, :integer
  end
end
