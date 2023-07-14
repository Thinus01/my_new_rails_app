class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :content
      5.times { Message.create(content: Faker::Lorem.sentence) }

      t.timestamps
    end
  end
end
