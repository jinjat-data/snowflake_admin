Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

# Development

```commandline
git clone https://github.com/jinjat-data/jinjat
git clone https://github.com/jinjat-data/snowflake_admin

# Run Backend
cd jinjat
poetry env use python3.9
poetry install 

poetry add dbt-snowflake==1.5.0
poetry run dbt deps --project-dir ../snowflake_admin/
poetry run jinjat serve --host 127.0.0.1 --project-dir ../snowflake_admin/

# If you're working on Next.js app, start dev process to watch for changes
cd src/ui && npm install
cd packages/core && npm run dev

# Start Next.js app
# cd ../../snowflake_admin && npm run serve
```