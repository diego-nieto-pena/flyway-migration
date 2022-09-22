CREATE TABLE role (
    id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    CONSTRAINT pk_role PRIMARY KEY(id)
);

CREATE TABLE user
(
    id       BIGINT       NOT NULL,
    name     VARCHAR(120) NOT NULL,
    lastname VARCHAR(120) NOT NULL,
    ssn      BIGINT       NOT NULL,
    CONSTRAINT pk_user PRIMARY KEY (id)
);

ALTER TABLE user
    ADD CONSTRAINT uc_user_ssn UNIQUE (ssn);

ALTER TABLE role
    ADD CONSTRAINT FK_ROLE_ON_USER FOREIGN KEY (user_id) REFERENCES user (id);