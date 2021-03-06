create table communities
(
    id   bigserial primary key,
    slug varchar(50) not null unique,
    name text        not null
);

create table users_communities
(
    user_id      int not null
        constraint users_communities_users_id_fk
            references users (id)
            on delete cascade,
    community_id int not null
        constraint users_communities_communities_id_fk
            references communities (id)
            on delete cascade,
    constraint users_communities_pk
        primary key (user_id, community_id)
);
