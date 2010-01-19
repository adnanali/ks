# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ks_session',
  :secret      => '46c6c34ff244825f7a42fdb9822b6e53fbc7542c9c1a3afd726707ec1df687720773b01eb7749fa2e8a628ef64cfe62bfc27283dbd229a0b13f049b28209223f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
