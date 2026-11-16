import cds from '@sap/cds'
import { Books } from '#cds-models/CatalogService'

export default class CatalogService extends cds.ApplicationService {
  init() {
    // después de leer: enriquecer el resultado
    this.after('READ', Books, (books) => {
      for (const b of books ?? []) {
        if (b.stock && b.stock > 100) b.title += ' (en oferta)'
      }
    })
    return super.init()
  }
}
