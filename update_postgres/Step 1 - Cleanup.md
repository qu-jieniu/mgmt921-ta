Reference: https://github.com/EvanJo/wrds2pg

On Powershell or Terminal:

```sh

# if you have existing keys, skip until step 5
# the file path depends on yout key name

# 1. remove all the caches and configs on local computer
rm -rf ~/.ssh/*

# 2. log in to the wrds server
ssh <wrds_id>@wrds-cloud.wharton.upenn.edu

# 3. remove all ssh cache on wrds server
rm -rf ~/.ssh/*

# 4. exit the server
exit

# 5. generate key, press enter all the way through ...
ssh-keygen -t rsa 

# 6. pass key to the wrds server
cat ~/.ssh/id_rsa.pub | ssh <wrds_id>@wrds-cloud.wharton.upenn.edu "cat >> ~/.ssh/authorized_keys"

# 7. log in to the wrds server - the server will generate the key for the sas server too (important)
ssh <wrds_id>@wrds-cloud.wharton.upenn.edu

# 8. exit the server for preparation of downloading data
exit

```