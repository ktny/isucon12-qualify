USE `isuports`;

alter table player add index tenant_created_at_idx (tenant_id, created_at DESC);
