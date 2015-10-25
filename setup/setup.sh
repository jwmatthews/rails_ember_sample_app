yum -y install epel-release postgresql-server postgresql-contrib postgresql-devel
postgresql-setup initdb
cp /vagrant/setup/pg_hba.conf /var/lib/pgsql/data/pg_hba.conf
systemctl start postgresql
systemctl enable postgresql

# Rails needs a javascript environment, so installing nodejs
yum -y install nodejs
/vagrant/setup/create_db_user.sh
/vagrant/setup/init_rails_app.sh
