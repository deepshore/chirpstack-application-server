-- +migrate Up
alter table device_profile
    add column uplink_interval bigint not null default 86400000000000;

alter table device_profile
    alter column uplink_interval drop default;

-- +migrate Down
alter table device_profile
    drop column uplink_interval;
