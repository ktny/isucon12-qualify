#!/bin/bash
set -euxo pipefail

for i in {1..234}; do
    ./sqlite3-to-sql ../tenant_db/$i.db > /tmp/tmp.sql
    mysql -uisucon -pisucon isuports < /tmp/tmp.sql
done