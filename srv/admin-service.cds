using { sap.capire.bookshop as my } from '../db/schema';

// Servicio de escritura. Proyecta sobre las entidades de db y no sobre
// CatalogService: el @readonly del catálogo se heredaría en la proyección.
// Sin @requires de momento; el capítulo 8 lo protege con el rol Admin.
service AdminService @(path: '/admin') {
  entity Books   as projection on my.Books;
  entity Authors as projection on my.Authors;
}
