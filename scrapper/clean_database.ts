import * as api from './api.ts';

export async function cleanDatabase() {
    // maybe better with Promise.all?
    await api.deleteAllProducts();
    await api.deleteAllCategories();
    await api.deleteAllProductFeatureValues();
    await api.deleteAllProductFeatures();
    await api.deleteAllManufacturers();
    await api.deleteAllSuppliers();
}