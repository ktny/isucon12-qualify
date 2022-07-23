USE `isuports`;

alter table player add index tenant_created_at_idx (tenant_id, created_at DESC);

ALTER TABLE competition ADD player_count INT NOT NULL DEFAULT 0, ADD visitor_count INT NOT NULL DEFAULT 0;