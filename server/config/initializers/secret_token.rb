# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Server::Application.config.secret_key_base = 'b38f850e3819ae90929e7575464f9b91b6ee749819e5b6481894ce7a21b45bc69931776780d08f8fc024a735cda48aef26cf53e2460af2c561ea4f149d0186ff'
