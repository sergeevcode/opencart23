ALTER TABLE oc_review ADD COLUMN link VARCHAR(350) NOT NULL AFTER author;
ALTER TABLE oc_review ADD COLUMN admin_answer TEXT NOT NULL AFTER author;