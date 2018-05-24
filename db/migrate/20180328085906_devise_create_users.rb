# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :customer_id, default: ''
      t.string :first_name, default: ''
      t.string :last_name , default: ''
      t.string :mobile, default: ''
      t.string :dial_code, default: ''
      t.string :country, default: ''
      t.string :referal_code, default: ''
      t.string :profile, default: ''
      t.string :aml, default: ''
      t.string :agreement, default: ''
      t.boolean :email_verified, default: false
      t.boolean :mobile_verified, default: false
      t.boolean :status, default: false
      t.string :term_conditions, default: ''
      t.string :token, default: ''
      t.string :remember_token, default: ''
      t.string :google_auth_code, default: ''
      t.boolean :auth_enabled, default: false
      t.string :auth_code_url, default: ''
      t.string :dob, default: ''
      t.string :uid, default: ''
      t.string :oauth_token, default: ''
      t.string :provider, default: ''

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
