

CREATE TABLE "fed_data" (
    "id" INT   NOT NULL,
    "year" INT   NOT NULL,
    "name" VARCHAR(20)   NOT NULL,
    "totalRegs" INT   NOT NULL,
    CONSTRAINT "pk_fed_data" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "fema_data" (
    "id" FLOAT   NOT NULL,
    "state" VARCHAR(2)   NOT NULL,
    "year" INT   NOT NULL,
    "incident_type" VARCHAR(20)   NOT NULL,
    "incident_title" VARCHAR(40)   NOT NULL,
    CONSTRAINT "pk_fema_data" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "fed_data" ADD CONSTRAINT "fk_fed_data_year" FOREIGN KEY("year")
REFERENCES "fema_data" ("year");

