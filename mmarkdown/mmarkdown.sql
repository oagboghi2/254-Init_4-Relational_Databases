CREATE TABLE markdown (ID INTEGER PRIMARY KEY,
files TEXT,
title VARCHAR,
date_created TEXT,
date_edited TEXT,
word_count INTEGER
);

CREATE TABLE Files (ID INTEGER PRIMARY KEY,
files VARCHAR,
date_edited INTEGER
);


insert into markdown VALUES (1, 'leo morbi pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', 'enhance proactive partnerships', '7/7/2016','2016', 89);
insert into markdown VALUES (2, 'odio morbi odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis', 'innovate clicks-and-mortar e-business', '4/7/2017','2017', 20);
insert into markdown VALUES (3, 'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim', 'transition cutting-edge synergies', '3/4/2017','2016', 67);
insert into markdown VALUES (4, 'metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero', 'enhance maximize frictionless systems', '4/27/2017','2016', 53);
insert into markdown VALUES (5, 'donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi', 'brand cross-platform methodologies', '9/17/2016','2016', 95);
insert into markdown VALUES (6, 'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor', 'enhance optimize viral models', '9/18/2016','2016', 68);
insert into markdown VALUES(7, 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit', 'strategize leading-edge eyeballs', '12/3/2016','2017', 5);
insert into markdown VALUES (8, 'bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus', 'whiteboard B2C ROI', '6/26/2016','2017', 13);
insert into markdown VALUES (9, 'faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut', 'deliver user-centric mindshare', '1/28/2017','2017', 93);
insert into markdown VALUES (10, 'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque', 'redefine cross-platform systems', '8/7/2016','2016', 77);


SELECT files FROM markdown;
SELECT date_created FROM markdown;
SELECT files, word_count FROM MARKDOWN;
SELECT files FROM markdown WHERE title IN (SELECT files FROM markdown WHERE title LIKE "enhance");
SELECT date_edited FROM markdown ORDER BY date_edited ASC;

