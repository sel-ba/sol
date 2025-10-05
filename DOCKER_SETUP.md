# Docker Container Startup Instructions

## Prerequisites
1. **Start Docker Desktop on Windows first**
   - Open Docker Desktop application on Windows
   - Wait for it to fully start (whale icon should be steady)
   - Make sure WSL2 integration is enabled in Docker Desktop settings

## Start Database Services

Once Docker Desktop is running, execute these commands in WSL:

```bash
# Navigate to project directory
cd /mnt/c/Users/souha/OneDrive/Desktop/space

# Start all database services
docker compose up -d postgres qdrant redis

# OR start them individually:
# PostgreSQL Database
docker run -d --name nasa_postgres \
  -e POSTGRES_DB=nasa_space_bio \
  -e POSTGRES_USER=admin \
  -e POSTGRES_PASSWORD=changeme \
  -p 5432:5432 \
  postgres:15

# Qdrant Vector Database  
docker run -d --name nasa_qdrant \
  -p 6333:6333 \
  -p 6334:6334 \
  qdrant/qdrant:latest

# Redis Cache
docker run -d --name nasa_redis \
  -p 6379:6379 \
  redis:7-alpine
```

## Verify Services Are Running

```bash
# Check container status
docker ps

# Test PostgreSQL connection
docker exec -it nasa_postgres psql -U admin -d nasa_space_bio -c "SELECT version();"

# Test Qdrant API
curl http://localhost:6333/health

# Test Redis
docker exec -it nasa_redis redis-cli ping
```

## Populate Database (if needed)

If you need to populate the database with initial data:

```bash
# Navigate to data processing directory
cd backend/data_processing

# Run data population scripts
python database_populator.py
python generate_qdrant_embeddings.py
```

## Current Status

✅ Backend API: Running on http://localhost:8000
✅ Frontend: Running on http://localhost:8080
❌ Database Services: Need Docker Desktop to start

## Next Steps

1. Start Docker Desktop on Windows
2. Run the docker commands above
3. Your application will then have full database connectivity
4. All endpoints will work with real data instead of returning database connection errors