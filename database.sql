DROP database if exists mediaplayer;
CREATE DATABASE mediaplayer; -- luo tietokanta

USE mediaplayer; -- käytä tietokantaa

CREATE TABLE kayttaja (id INT, PRIMARY KEY (id), tunnus VARCHAR(60), salasana VARCHAR(60));
CREATE TABLE biisi(id INT, PRIMARY KEY (id), pituus VARCHAR(10), artisti VARCHAR(20), genre VARCHAR(10), nimi VARCHAR(30), linkki VARCHAR(60));
CREATE TABLE biisilista (biisiid INT, kayttajaid INT, FOREIGN KEY (biisiid) REFERENCES biisi(id), FOREIGN KEY (kayttajaid) REFERENCES kayttaja(id));

INSERT INTO kayttaja VALUES(0, 'Petri', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'); -- Kayttaja hashilla


INSERT INTO biisi VALUES (1, '1:43', 'Snabisch','dance','Dance and Jump','http://opengameart.org/sites/default/files/Dance%20and%20Jump.ogg');
INSERT INTO biisi VALUES (2, '2:54', 'Snabisch','game','Red Hot','http://opengameart.org/sites/default/files/Red%20Hot.mp3');
INSERT INTO biisi VALUES (3, '1:37', 'Eric Matyas','RPG','Netherplace','http://opengameart.org/sites/default/files/Netherplace.mp3');
INSERT INTO biisi VALUES (4, '2:08', 'ShwiggityShwag','8 bit','8 bit Theme','http://opengameart.org/sites/default/files/Loop_1_0.ogg');
INSERT INTO biisi VALUES (5, '3:35', 'gichco','electronic','Rainbow','http://opengameart.org/sites/default/files/Rainbow%20%28promodj.com%29.mp3');

INSERT INTO biisilista VALUES(5,0);
INSERT INTO biisilista VALUES(3,0);
INSERT INTO biisilista VALUES(1,0);

CREATE USER mediaplayer;
GRANT SELECT ON mediaplayer.* TO mediaplayer;



