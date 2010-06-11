# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_convivo_session',
  :secret      => '50449a0dee33f84a4614254013ab4afbc5ff6047085d879d5013fbe4aed373a689cd7e6353dff874e789037643cb2d801eb6c5debb456da19e3fa9f7b31a3e67'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
