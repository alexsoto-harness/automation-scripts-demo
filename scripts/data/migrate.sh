#!/usr/bin/env bash
# Migrate Sanitized Data to Test Environment (MOCK - demo only, performs no real work)
set -euo pipefail

SOURCE_DB="${SOURCE_DB:-prod-replica}"
TARGET_DB="${TARGET_DB:-test-db}"
DRY_RUN="${DRY_RUN:-true}"
SAMPLE_PERCENT="${SAMPLE_PERCENT:-100}"

log() { echo "[$(date -u +%Y-%m-%dT%H:%M:%SZ)] $*"; }

log "Starting sanitized data migration: ${SOURCE_DB} -> ${TARGET_DB} (dry_run=${DRY_RUN})"
log "Step 1/4: Extracting snapshot from ${SOURCE_DB} (mock)"
sleep 1
log "Step 2/4: Masking PII columns: email, ssn, phone (mock)"
sleep 1
log "Step 3/4: Loading sanitized data into ${TARGET_DB} (mock)"
sleep 1
log "Step 4/4: Validating row counts between ${SOURCE_DB} and ${TARGET_DB} (mock)"
sleep 1
log "Validation passed: source and target row counts match (mock)"
log "Done. Rows migrated: 12345 (mock, sample=${SAMPLE_PERCENT}%)"
