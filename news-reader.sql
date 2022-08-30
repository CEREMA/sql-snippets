CREATE TABLE NewsHeader (
  id          integer     not null,
  NewsTitle   varchar(50) not null,
  NewsDesc    varchar(50) not null,
  NewsDate    timestamp    not null,
  CONSTRAINT pk_newsheader PRIMARY KEY (id)
);

CREATE TABLE NewsContent (
  NewsId       integer     not null,
  ContentId    integer     not null,
  Sequence     integer     not null,
  Content      text        not null,
  ContentUser  varchar(10)     null,
  ContentDate  timestamp        null,
  CONSTRAINT pk_newscontent PRIMARY KEY (NewsId,ContentId),
  CONSTRAINT fk_newscontent_newsheader FOREIGN KEY (NewsId) references NewsHeader(id)
);

insert into NewsHeader values(1,'Test','News for test','2012-12-07');
insert into NewsHeader values(2,'Another Test','this is another test','2012-12-01');

insert into NewsContent values(1,1,1,'Some Text',NULL, NULL);
insert into NewsContent values(2,1,1,'Some user inserted text', NULL, NULL);
insert into NewsContent values(2,2,2,'[Status]','User2','2012-12-07');
insert into NewsContent values(2,3,4,'[Some other status]','User2','2012-12-07');
insert into NewsContent values(2,4,3,'Some other text',NULL,NULL);
insert into NewsContent values(2,5,5,'another text',NULL,NULL);
insert into NewsContent values(2,6,6,'[Another Status]','User2','2012-12-07');
