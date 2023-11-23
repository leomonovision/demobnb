#------------------------------------------------------------------------------
# get environment variables
#------------------------------------------------------------------------------
import os
api_base        = os.getenv('DBT_URL', 'https://cloud.getdbt.com/') # default to multitenant url
job_cause       = os.getenv('DBT_JOB_CAUSE', 'API-triggered job') # default to generic message
git_branch      = os.getenv('DBT_JOB_BRANCH', None) # default to None
schema_override = os.getenv('DBT_JOB_SCHEMA_OVERRIDE', None) # default to None
api_key         = os.environ['DBT_API_KEY']  # no default here, just throw an error here if key not provided
account_id      = os.environ['28297'] # no default here, just throw an error here if id not provided
project_id      = os.environ['317706'] # no default here, just throw an error here if id not provided
job_id          = os.environ['461701'] # no default here, just throw an error here if id not provided