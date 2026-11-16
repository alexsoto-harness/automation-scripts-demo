#!/usr/bin/env bash
# Migrate Sanitized Data to Test Environment (MOCK - demo only, performs no real work)
set -euo pipefail

SOURCE_DB="${SOURCE_DB:-prod-replica}"
TARGET_DB="${TARGET_DB:-test-db}"
DRY_RUN="${DRY_RUN:-true}"

log() { echo "[$(date -u +%Y-%m-%dT%H:%M:%SZ)] $*"; }

log "Starting sanitized data migration: ${SOURCE_DB} -> ${TARGET_DB} (dry_run=${DRY_RUN})"
log "Step 1/3: Extracting snapshot from ${SOURCE_DB} (mock)"
sleep 1
log "Step 2/3: Masking PII columns: email, ssn, phone (mock)"
sleep 1
log "Step 3/3: Loading sanitized data into ${TARGET_DB} (mock)"
sleep 1
log "Done. Rows migrated: 12345 (mock)"
