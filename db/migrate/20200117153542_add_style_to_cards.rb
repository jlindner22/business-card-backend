class AddStyleToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :style, :string
  end
end
