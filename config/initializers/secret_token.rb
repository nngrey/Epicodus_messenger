# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Messaging::Application.config.secret_key_base = 'ef8528e4b2e0ad055d3bdf09e8769e784026142c7e78ec3c66d27252de612b50cb43636c6a8996c073185a57db7961beab21855651bae9373b0cdb18f7340041'
