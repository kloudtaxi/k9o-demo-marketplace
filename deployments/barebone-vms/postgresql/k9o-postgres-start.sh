echo '===== Creating PostgreSQL databases and users ====='

# su - postgres

# Update pg_hba.conf to trust local peer connection
sed -i  '/^local   all             all  trust/ s/peer/trust/' /etc/postgresql/13/main/pg_hba.conf
cat /etc/postgresql/13/main/pg_hba.conf

# Restart Postgres to udpate conf
/etc/init.d/postgresql restart

# Create kumademo user 
sudo -u postgres psql -c "CREATE USER kumademo WITH SUPERUSER CREATEDB ENCRYPTED PASSWORD 'kumademo'"

# psql -c "CREATE USER kumademo WITH SUPERUSER CREATEDB ENCRYPTED PASSWORD 'kumademo'"

# Create kumademo database
sudo -u postgres createdb kumademo

# Restore PostgreSQL data from dump file
psql -U kumademo -d kumademo -f k9o-database-restore.sql
# psql -U kumademo -d kumademo -f database.sql
