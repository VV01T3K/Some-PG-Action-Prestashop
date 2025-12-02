import * as api from './api.ts';

export async function cleanDatabase() {
    // Products must be deleted first (they reference categories, features, etc.)
    await api.deleteAllProducts();
    
    // These can all run in parallel after products are deleted
    await Promise.all([
        api.deleteAllCategories(),
        api.deleteAllProductFeatureValues(),
        api.deleteAllProductFeatures(),
        api.deleteAllManufacturers(),
        api.deleteAllSuppliers()
    ]);
}