# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_friend_face_session',
  :secret      => '7280f9ffa6324b661170819b5cf35194af4bde8235f3c439bcca7067cd04f3efa858e7520d2ea3c84c22c0ffe8d80b6a35409826c019d0bcbb03d1c9a74b6d36'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
