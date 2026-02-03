# superset_config.py

import os

# Strong secret key for encryption
# superset_config.py
# superset_config.py

import os

# -------------------------------------------------------------------
# Superset Database
# -------------------------------------------------------------------
SQLALCHEMY_DATABASE_URI = "postgresql+psycopg2://postgres:postgres123@localhost:5432/hospital_dashboard"

# -------------------------------------------------------------------
# Secret Key (required)
# -------------------------------------------------------------------
SECRET_KEY = "5EIJcAG6GCZ_bejml-kRE-2wn292B-I2RTa1L1FLSMo"  # Replace with a strong random string

# -------------------------------------------------------------------
# Optional: Flask App Builder settings
# -------------------------------------------------------------------
# You can keep the defaults unless you want custom user roles
