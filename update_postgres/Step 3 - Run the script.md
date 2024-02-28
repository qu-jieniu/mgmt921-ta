# Sub-Step 1

Create a new database called 'wrds' in postgres.

You can do this by using DataGrip, which is shown in the instruction video.

Alternatively, you can use the following SQL command in DataGrip:

```sql
CREATE DATABASE wrds;
```

# Sub-Step 2

Create a new file called update_postgres.py

Replace the <master password> with your postgres master password.
Replace <your wrds id> with your wrds account username.

``` py

from wrds2pg import wrds_update

wrds_update(schema="crsp"
    , table_name="stocknames" 
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

# crsp.dsf takes the longest time to download - expect 1-2 hrs on a 50MBs download speed
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
```

Step 3

``` sh
# Go to Bash/Terminal

python3 update_postgres.py
```
