class AllTables < ActiveRecord::Migration
  def change

    create_table :newsletters do |t|
      t.string :name
      t.text :description
      t.string :website_url
      t.string :signup_url
      t.string :example_url
      t.string :screenshot
      t.boolean :approval
      t.integer :user_id
      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.timestamps
    end

    create_table :votes do |t|
      t.boolean :vote
      t.integer :user_id
      t.integer :voteable_id
      t.timestamps
    end

    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

    create_table :nl_categories do |t|
      t.integer :category_id
      t.integer :newsletter_id
    end

  end
end
