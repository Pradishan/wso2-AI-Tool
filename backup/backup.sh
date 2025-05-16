#!/bin/bash
echo "📦 Running MongoDB Backup..."

docker exec github_mongo mongodump \
  --archive=/backup/backup.gz \
  --gzip

echo "✅ Backup completed at: ./backup/backup.gz"
