# Set up environment variables
ENV['DEMO_ENV'] ||= 'development'

ENV['DEMO_DB'] ||= ':memory:' if ENV['DEMO_ENV'] == 'test'
ENV['DEMO_DB'] ||= "db/#{ENV['DEMO_ENV']}.sqlite3"
