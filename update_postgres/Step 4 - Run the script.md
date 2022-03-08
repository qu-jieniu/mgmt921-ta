Step 1 

```sh
psql postgres
# username: postgres
# password: the master password you choose when installing postgresql

CREATE DATABASE wrds;

\q
```

Step 2 

```py
# Create a new file called update_postgres.py

from wrds2pg import wrds_update

wrds_update(schema="crsp"
	, table_name="stocknames" 
	, host="postgres:<master password>@localhost"
	, host="cedar-pgsql-vm"
	, dbname="wrds"
	, wrds_id="<your wrds id>"
	, fix_missing=True
	, fix_cr=True
	, force=True
	, create_roles=False
	)

wrds_update(schema="crsp"
	, table_name="dsf" 
	, host="postgres:<master password>@localhost"
	, dbname="wrds"
	, wrds_id="<your wrds id>"
	, fix_missing=True
	, fix_cr=True
	, force=True
	, create_roles=False
	)

wrds_update(schema="crsp"
	, table_name="ccmxpf_lnkused" 
	, host="postgres:<master password>@localhost"
	, dbname="wrds"
	, wrds_id="<your wrds id>"
	, fix_missing=True
	, fix_cr=True
	, force=True
	, create_roles=False
	)   

wrds_update(schema="comp"
	, table_name="fundq" 
	, host="postgres:<master password>@localhost"
	, dbname="wrds"
	, wrds_id="<your wrds id>"
	, fix_missing=True
	, fix_cr=True
	, force=True
	, create_roles=False
	)
```

Step 3

```sh
# Go to Powershell/Terminal

python3 update_postgres.py
```

Step 4

```sh
psql wrds

\i crsp_comp_merge.sql
```