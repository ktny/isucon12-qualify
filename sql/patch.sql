USE `isuports`;

ALTER TABLE competition ADD player_count INT NOT NULL DEFAULT 0, ADD visitor_count INT NOT NULL DEFAULT 0;
