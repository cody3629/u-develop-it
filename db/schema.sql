-- this will drop/delete the tables every time we run the schema file ensuring there is a clean slate everytime.
DROP TABLE IF EXISTS candidates;
DROP TABLE IF EXISTS parties;


CREATE TABLE candidates (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  party_id INTEGER,
  industry_connected BOOLEAN NOT NULL,
  CONSTRAINT fk_party FOREIGN KEY (party_id) REFERENCES parties(id) ON DELETE SET NULL
);

CREATE TABLE parties (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description TEXT -- Note how we used a TEXT data type for description instead of VARCHAR. A party's description has the potential to be anywhere from one to several sentences long, but the VARCHAR data type must declare a limit on the length. TEXT, on the other hand, can store much longer strings of varying length.
);