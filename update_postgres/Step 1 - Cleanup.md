On Windows, install the following software

- [Git for Windows](https://git-scm.com/download/win) (and use Git Bash to run the following commands)
- Python
- DataGrip (activate using GitHub Student Developer Pack)
- PostgreSQL
- VSCode

On Mac, install the following software

- Python
- DataGrip (activate using GitHub Student Developer Pack)
- PostgreSQL
- VSCode

On Mac, run the following commands in Terminal.

Replace <wrds_id> with your wrds account username.

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
ssh <wrds_id>@wrds-cloud-sshkey.wharton.upenn.edu

# 8. exit the server for preparation of downloading data
exit

```