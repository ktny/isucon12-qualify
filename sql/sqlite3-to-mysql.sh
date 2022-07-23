#!/bin/bash
set -x pipefail

rm -f /tmp/tmp.sql

for i in {1..234}; do
    echo start $i.db
    ./sqlite3-to-sql ../tenant_db/$i.db >> /tmp/tmp.sql
done

mysql -uisucon -pisucon isuports < /tmp/tmp.sql