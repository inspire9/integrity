$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

require "bundler/setup"
require "integrity"

# Uncomment as appropriate for the notifier you want to use
# = Email
# require "integrity/notifier/email"
# = IRC
# require "integrity/notifier/irc"
# = Campfire
# require "integrity/notifier/campfire"
# = TCP
# require "integrity/notifier/tcp"
# = HTTP
# require "integrity/notifier/http"
# = Notifo
# require "integrity/notifier/notifo"
# = AMQP
# require "integrity/notifier/amqp"

Integrity.configure do |c|
  c.database     "postgres://localhost/integrity"
  c.directory    "builds"
  c.base_url     "http://ci.example.org"
  c.log          "integrity.log"
  c.github       "SECRET"
  c.build_all!
  c.builder      :threaded, 5
end
