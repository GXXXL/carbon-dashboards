DROP TABLE DASHBOARD_RESOURCE;
CREATE TABLE IF NOT EXISTS DASHBOARD_RESOURCE (
  DASHBOARD_ID                INTEGER      NOT NULL AUTO_INCREMENT,
  DASHBOARD_URL               VARCHAR(100) NOT NULL,
  DASHBOARD_NAME              VARCHAR(256) NOT NULL,
  DASHBOARD_VERSION           VARCHAR(100),
  DASHBOARD_OWNER             VARCHAR(100) NOT NULL,
  DASHBOARD_UPDATEDBY         VARCHAR(100) NOT NULL,
  DASHBOARD_CREATED_TIME      TIMESTAMP    NOT NULL,
  DASHBOARD_LAST_UPDATED      TIMESTAMP    NOT NULL,
  DASHBOARD_DESCRIPTION       VARCHAR(1000),
  DASHBOARD_SHARED            SMALLINT,
  DASHBOARD_PARENT_ID         VARCHAR(100),
  DASHBOARD_CONTENT           LONGBLOB,
  CONSTRAINT PK_DASHBOARD_RESOURCE PRIMARY KEY (DASHBOARD_ID),
  UNIQUE (DASHBOARD_NAME, DASHBOARD_VERSION, DASHBOARD_OWNER)
)