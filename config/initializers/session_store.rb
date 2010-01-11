# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jrails_test_session',
  :secret      => 'e1067136e19895d67edac6d1e817e240586d8b65a27d4847650930e9fa8b5c5df7e410c151bdc8de3e1ab2e6b7f4338666108f6d359e3b95b9c7dea1791fe8a6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
