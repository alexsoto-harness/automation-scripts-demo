# Migrate Sanitized Data to Test Environment

Copies sanitized, production-like data into a test environment so teams can validate
changes without exposing sensitive information. **This demo script is mocked.**

## Inputs

| Name | Default | Description |
|---|---|---|
| `SOURCE_DB` | `prod-replica` | Source database |
| `TARGET_DB` | `test-db` | Target database |
| `DRY_RUN` | `true` | Skip writes when true |

## Run

```bash
SOURCE_DB=prod-replica TARGET_DB=test-db ./scripts/data/migrate.sh
```

## Rollback

Re-run with a fresh snapshot; the target is overwritten each run.
