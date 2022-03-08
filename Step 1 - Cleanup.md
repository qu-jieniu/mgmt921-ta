Reference: https://github.com/EvanJo/wrds2pg

On Powershell or Terminal:

```sh

# remove all the caches and configs on local computer
rm -rf ~/.ssh/*

# log in to the wrds server
ssh <wrds_id>@wrds-cloud.wharton.upenn.edu

# remove all ssh cache on wrds server
rm -rf ~/.ssh/*

# exit the server
exit

# generate key, press enter all the way through ...
ssh-keygen -t rsa 

# pass key to the wrds server
cat ~/.ssh/id_rsa.pub | ssh <wrds_id>@wrds-cloud.wharton.upenn.edu "cat >> ~/.ssh/authorized_keys"

# log in to the wrds server - the server will generate the key for the sas server too (important)
ssh <wrds_id>@wrds-cloud.wharton.upenn.edu

# exit the server for preparation of downloading data
exit

```