#USE test;

DROP TABLE IF EXISTS book;

CREATE TABLE book (
  ID          int(11) NOT NULL AUTO_INCREMENT,
  TITLE       VARCHAR(100),
  DESCRIPTION VARCHAR(255),
  AUTHOR      VARCHAR(100),
  ISBN        VARCHAR(20),
  PRINTYEAR   INT,
  READALREADY BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (ID)
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

#1
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '5-94799-164-0',
  '2003',
  'The Lord Of The Rings',
  'J.R.R. Tolkien',
  'Tolkien\'s seminal three-volume epic chronicles the War of the Ring...'
);

#2
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '978-5-17-032458-3',
  '2005',
  'The Hitchhiker\'s Guide To The Galaxy',
  'Douglas Adams',
  'In the first, hilarious volume of Adams...'
);

#3
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '0-812-53253-8',
  '1995',
  'Ender\'s Game',
  'Orson Scott Card',
  'Young Andrew "Ender" Wiggin, bred to be a genius...'
);

#4
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '5-9660163-9-9',
  '2004',
  'The Dune Chronicles',
  'Frank Herbert',
  'Follows the adventures of Paul Atreides, the son of a betrayed duke given...'
);

#5
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '978-5-9762-0382-2',
  '2004',
  'A Song Of Ice And Fire Series',
  'George R.R. Martin',
  'As the Seven Kingdoms face a generation-long winter...'
);

#6
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '5-352-01296-4',
  '2005',
  '1984',
  'George Orwell',
  'Portrays life in a future time when a totalitarian government watches over all citizens and directs all activities...'
);

#7
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '978-5-699-28514-3',
  '2010',
  'Fahrenheit 451',
  'Ray Bradbury',
  'A totalitarian regime has ordered all books to be destroyed...'
);

#8
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '978-5-699-27604-2',
  '2008',
  'The Foundation Trilogy',
  'Isaac Asimov',
  'A band of psychologists, under the leadership of psychohi...'
);

#9
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '978-5-226-02125-1',
  '2010',
  'Brave New World',
  'Aldous Huxley',
  'Huxley\'s classic prophetic novel describes the socialize...'
);

#10
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '978-5-9762-3520-5',
  '2007',
  'American Gods',
  'Neil Gaiman',
  'On the plane home to attend the funerals of his wife and best friend...'
);

#11
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '978-0-15-603521-7',
  '2007',
  'The Princess Bride',
  'William Goldman',
  'This tale of a handsome farm boy who, aided by a drunken...'
);

#12
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '5-7921-0434-4',
  '2005',
  'The Wheel Of Time Series',
  'Robert Jordan',
  'At 13 volumes and counting, this sweeping some would say sprawling...'
);

#13
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '5-697-00124-X',
  '1997',
  'Neuromancer',
  'William Gibson',
  'Gibsons groundbreaking debut novel follows Case, a burned-out computer whiz...'
);

#14
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '978-5-367-00923-1',
  '2009',
  'Watchmen',
  'Alan Moore and Dave Gibbons',
  'As former members of a disbanded group of superheroes called the Crimebusters...'
);

#15
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '5-699-13798-5',
  '2005',
  'I, Robot',
  'Isaac Asimov',
  'Isaac Asimov changed our perception of robots forever when he formulated ...'
);

#16
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '5-04-009682-8',
  '2002',
  'Stranger In A Strange Land',
  'Robert A. Heinlein',
  'Valentine Michael Smith, born and raised on Mars, arrives on Earth stunning Western culture with his superhuman abilities....'
);

#17
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '978-5-699-39937-6',
  '2010',
  'The Kingkiller Chronicles',
  'Patrick Rothfuss',
  'This suspenseful coming-of-age story folllows Kvothe as he recounts his...'
);

#18
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '978-5-17-007734-2',
  '2009',
  'Slaughterhouse-Five',
  'Kurt Vonnegut',
  'Billy Pilgrim returns home from World War II only to be kidnapped by aliens from...'
);

#19
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '978-5-373-03560-6',
  '2010',
  'Frankenstein',
  'Mary Wollstonecraft Shelley',
  'Mary Shelley\'\'s chilling portrait of a scientist obsessed with creating life...'
);

#20
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '5-699-18376-0',
  '2006',
  'The Handmaid''s Tale',
  'Margaret Atwood',
  'A chilling look at the near future presents the story of Offred...'
);

#21
INSERT INTO book (ISBN, PRINTYEAR, TITLE, AUTHOR, DESCRIPTION) VALUES (
  '978-5-17-033697-5',
  '2007',
  'The Dark Tower Series',
  'Stephen King',
  'Roland, the world''s last gunslinger, tracks an enigmatic Man in Black toward a forbidding dark tower, fighting forces both mortal and other worldly on his quest....'
);


