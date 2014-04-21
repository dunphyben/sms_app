class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body
      t.string :to
      t.string :from
      t.string :status
      t.string :media_url

      t.timestamps
    end
  end
end
