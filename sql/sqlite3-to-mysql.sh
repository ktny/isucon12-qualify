#!/bin/bash
set -x pipefail

rm -f /tmp/tmp.sql

for i in {1..234}; do
    echo start $i.db
    /home/isucon/webapp/sql/sqlite3-to-sql /home/isucon/webapp/tenant_db/$i.db >> /tmp/tmp.sql
done

# mysql -uisucon -pisucon isuports < /tmp/tmp.sql
mysql -u"$ISUCON_DB_USER" \
		-p"$ISUCON_DB_PASSWORD" \
		--host "$ISUCON_DB_HOST" \
		--port "$ISUCON_DB_PORT" \
		"$ISUCON_DB_NAME" < /tmp/tmp.sql
