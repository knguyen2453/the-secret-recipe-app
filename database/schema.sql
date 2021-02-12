set client_min_messages to warning;

CREATE TABLE "users" (
    "userId" serial NOT NULL,
    "email" text NOT NULL,
    "password" text NOT NULL,
    CONSTRAINT "users_pk" PRIMARY KEY ("userId")
) WITH (
  OIDS=FALSE
);
CREATE TABLE "recipes" (
    "recipeId" serial NOT NULL,
    "title" text NOT NULL,
    "directions" text NOT NULL,
    "userId" integer NOT NULL,
    "datePosted" timestamp NOT NULL default now(),
    CONSTRAINT "recipes_pk" PRIMARY KEY ("recipeId")
) WITH (
  OIDS=FALSE
);
CREATE TABLE "comments" (
    "commentId" serial NOT NULL,
    "recipeId" integer NOT NULL,
    "userId" integer NOT NULL,
    "datePosted" timestamp NOT NULL default now(),
    "comment" text not null,
    CONSTRAINT "comments_pk" PRIMARY KEY ("commentId")
) WITH (
  OIDS=FALSE
);
ALTER TABLE "recipes" ADD CONSTRAINT "recipes_fk0" FOREIGN KEY ("userId") REFERENCES "users"("userId");
ALTER TABLE "comments" ADD CONSTRAINT "comments_fk0" FOREIGN KEY ("recipeId") REFERENCES "recipes"("recipeId");
ALTER TABLE "comments" ADD CONSTRAINT "comments_fk1" FOREIGN KEY ("userId") REFERENCES "users"("userId");
