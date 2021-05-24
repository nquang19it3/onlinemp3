class CreatePartners < ActiveRecord::Migration[6.1]
  def change
    create_table :partners do |t|
      t.string :partner_name
      t.text :partner_description

      t.timestamps
    end
  end
end
