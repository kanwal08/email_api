# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
EmailApi::Application.config.secret_key_base = '62cd04de9bea22916d9745b62faa24b00f66881388f027879769dde2ae9ac3c27115e2d71922677c84f7a13934a681e9eaba4a360615af495e8a3339ef73f0ac'
