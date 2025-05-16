#!/bin/bash
echo "♻️ Restoring MongoDB from backup.gz..."

docker exec -i github_mongo mongorestore \
  --archive=/restore/backup.gz \
  --gzip

echo "✅ Restore completed."
