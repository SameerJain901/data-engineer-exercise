# Environment

We have used `uv` package manager, but you are free to use any package manager.

Install the following packages if you want to use your preferred manager.

```
dbt-autofix dbt-core dbt-duckdb duckdb
```

You may also use `requirements.txt` if you want to create `venv` manually.

This project was made for Python `3.13.3`.

# References

Document the code snippets you referenced here.

```py
# This is an example
# https://stackoverflow.com/a/73574730
myAge = int(input('What is your age?'))
```


```
# https://docs.getdbt.com/reference/commands/show
dbt show --select "model_name.sql"
```

```
# https://docs.getdbt.com/reference/resource-configs/bigquery-configs#partition-clause
{{ config(
    materialized="incremental",
    partition_by={
      "field": "created_date",
      "data_type": "timestamp",
      "granularity": "day",
      "time_ingestion_partitioning": true
    }
) }}
```

```
# https://docs.getdbt.com/reference/model-properties
for OrderID uniqueness
```

```
For output format parquet
#https://duckdb.org/2025/04/04/dbt-duckdb#external-files

```