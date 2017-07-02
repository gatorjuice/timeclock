BE = bundle exec

install:
	bundle install

console: install
	$(BE) rails console

server: install
	$(BE) rails server

test:
	$(BE) rspec
