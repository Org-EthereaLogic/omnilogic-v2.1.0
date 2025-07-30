-- Enable useful PostgreSQL extensions for OmniLogic

-- UUID generation
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Full text search
CREATE EXTENSION IF NOT EXISTS "pg_trgm";

-- Case-insensitive text
CREATE EXTENSION IF NOT EXISTS "citext";

-- JSON validation
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- Vector operations (for embeddings)
-- CREATE EXTENSION IF NOT EXISTS "vector";

-- Add any other extensions your application needs