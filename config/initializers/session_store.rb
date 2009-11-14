# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_csnip_session',
  :secret      => '6fa7d920ebe53cfb763b3d69e5ac71f8b0141e3aba449a297aab50191101cbc35992e60194485587d5ea776aa9df4a076cc522845b6229bec771920a5c5f6376'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
