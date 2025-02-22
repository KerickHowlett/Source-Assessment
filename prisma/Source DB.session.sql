
BEGIN;
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Stephen King ', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Stephen King', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Stephen King', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Stephen King', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('J.R.R. Tolkien', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('J.R.R. Tolkien', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('J.R.R. Tolkien', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('J.R.R. Tolkien', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('George Orwell', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('George Orwell', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('George Orwell', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('George Orwell', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('C.S. Lewis', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('C.S. Lewis', 'Author');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Pink Floyd', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Pink Floyd', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Pink Floyd', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Pink Floyd', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Pink Floyd', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Rush', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Rush', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Rush', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Rush', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Led Zeppelin', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Led Zeppelin', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Led Zeppelin', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Led Zeppelin', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Led Zeppelin', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Yes', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Yes', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Yes', 'Music Group');
INSERT INTO "creators" ("fullName", "creatorType") VALUES ('Yes', 'Music Group');
COMMIT;

-- ----------------------------
-- Records of media
-- ----------------------------
-- BEGIN;
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Stephen King ', 'Author', 'The Dark Tower', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Stephen King', 'Author', 'The Green Mile', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Stephen King', 'Author', 'The Shining', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Stephen King', 'Author', 'The Stand', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('J.R.R. Tolkien', 'Author', 'The Hobbit', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('J.R.R. Tolkien', 'Author', 'The Lord of the Rings', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('J.R.R. Tolkien', 'Author', 'The Silmarillion', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('J.R.R. Tolkien', 'Author', 'The Two Towers', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('George Orwell', 'Author', '1984', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('George Orwell', 'Author', 'A Clergyman''s Daughter', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('George Orwell', 'Author', 'Animal Farm', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('George Orwell', 'Author', 'The Lion and the Unicorn', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('C.S. Lewis', 'Author', 'The Chronicles of Narnia', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('C.S. Lewis', 'Author', 'The Lion, the Witch and the Wardrobe', 'Book');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Pink Floyd', 'Music Group', 'The Dark Side of the Moon', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Pink Floyd', 'Music Group', 'Wish You Were Here', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Pink Floyd', 'Music Group', 'The Wall', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Pink Floyd', 'Music Group', 'The wall', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Pink Floyd', 'Music Group', 'The Final Cut', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Rush', 'Music Group', ' 2112', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Rush', 'Music Group', 'Moving Pictures', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Rush', 'Music Group', 'Clockwork Angels', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Rush', 'Music Group', 'Snakes & Arrows', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Led Zeppelin', 'Music Group', 'Led Zeppelin IV', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Led Zeppelin', 'Music Group', 'Physical Graffiti', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Led Zeppelin', 'Music Group', 'Physical Graffiti', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Led Zeppelin', 'Music Group', 'Houses of the Holy', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Led Zeppelin', 'Music Group', 'Presence', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Yes', 'Music Group', 'The Yes Album', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Yes', 'Music Group', 'Fragile', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Yes', 'Music Group', 'Close to the Edge', 'Album');
-- INSERT INTO "raw_media" ("full_name", "creator_type", "media_name", "media_type") VALUES ('Yes', 'Music Group', '90125', 'Album');
-- COMMIT;
