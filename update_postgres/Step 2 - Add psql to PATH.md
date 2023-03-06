# On windows:

1. Search for `Edit the system environment variables` in the start menu

2. Click on `Environment Variables`

3. Click on `Path`, then click `New`

4. Add 
    - variable name as `postgres`, 
    - variable value as `C:\Program Files\PostgreSQL\15\bin`

5. Click on ok. 


# On mac: 

1. Open Temrinal 

2. Run `echo 'export PATH="/Library/PostgreSQL/15/bin/:$PATH"' >> ~/.zshrc`