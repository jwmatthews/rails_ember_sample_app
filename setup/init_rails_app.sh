pushd .
cd /vagrant/rest_api
bundle install
bundle exec rake db:create db:migrate db:seed
popd
