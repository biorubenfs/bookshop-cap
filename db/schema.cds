namespace sap.capire.bookshop;
using { managed, cuid } from '@sap/cds/common';

entity Books : cuid, managed {
  title  : String(111) @mandatory;
  stock  : Integer default 0;
  price  : Decimal(9,2);
  author : Association to Authors;
}

entity Authors : cuid, managed {
  name  : String(111);
  books : Association to many Books on books.author = $self;
}
