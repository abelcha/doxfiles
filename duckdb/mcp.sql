.read /me/config/duckdb/utils.sql
.read /me/config/duckdb/macros.sql

LOAD '/me/config/duckdb/duckdb_mcp.duckdb_extension';

PRAGMA mcp_server_start('stdio');
