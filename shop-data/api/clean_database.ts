import * as api from './api.ts';

export async function cleanDatabase() {
    // maybe better with Promise.all?
    await api.deleteAllProducts(); //+check if it's ok with that caching
    await api.deleteAllCategories(); //should be ok now
    await api.deleteAllProductFeatureValues();
    await api.deleteAllProductFeatures();
    await api.deleteAllManufacturers();
    await api.deleteAllSuppliers();
}