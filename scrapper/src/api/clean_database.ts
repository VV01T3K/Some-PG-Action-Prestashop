import * as api from './api.ts';

export async function cleanDatabase() {
    await api.deleteAllProducts();
    
    await Promise.all([
        api.deleteAllCategories(),
        api.deleteAllProductFeatureValues(),
        api.deleteAllProductFeatures(),
        api.deleteAllManufacturers(),
        api.deleteAllSuppliers()
    ]);
}