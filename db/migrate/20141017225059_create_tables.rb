class CreateTables < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.string :name, limit: 50, null: false
      t.string :description, limit: 400, null: false
      t.string :help_needed, limit: 400, null: false
      t.boolean :web_design, default: false
      t.boolean :web_development, default: false
      t.boolean :ios_development, default: false
      t.boolean :android_development, default: false
      t.boolean :data_analysis, default: false
      t.boolean :algorithm_design, default: false
      t.boolean :ruby_on_rails, default: false
      t.boolean :django, default: false
      t.boolean :html_css, default: false
      t.boolean :ruby, default: false
      t.boolean :python, default: false
      t.boolean :javascript, default: false
      t.boolean :java, default: false
      t.boolean :cpp, default: false
      t.boolean :c, default: false
      t.string :other

      t.timestamps
    end

    create_table :do_gooders do |t|
      t.string :name, limit: 50, null: false
      t.string :email, limit: 70, null: false
      t.string :about, limit: 400

      t.timestamps
    end

    create_table :causes_do_gooders do |t|
      t.integer :cause_id
      t.integer :do_gooder_id

      t.timestamps
    end

    create_table :coders do |t|
      t.string :name, limit: 50, null: false
      t.string :email, limit: 70, null: false
      t.string :about, limit: 400
      t.boolean :web_design, default: false
      t.boolean :web_development, default: false
      t.boolean :ios_development, default: false
      t.boolean :android_development, default: false
      t.boolean :data_analysis, default: false
      t.boolean :algorithm_design, default: false
      t.boolean :ruby_on_rails, default: false
      t.boolean :django, default: false
      t.boolean :html_css, default: false
      t.boolean :ruby, default: false
      t.boolean :python, default: false
      t.boolean :javascript, default: false
      t.boolean :java, default: false
      t.boolean :cpp, default: false
      t.boolean :c, default: false
      t.string :other

      t.timestamps
    end

    create_table :causes_coders do |t|
      t.integer :cause_id
      t.integer :coder_id
      t.boolean :confirmed, default: false

      t.timestamps
    end
  end
end
