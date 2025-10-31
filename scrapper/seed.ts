import * as api from './api';
import { cleanDatabase } from './cleanDatabase';
import type { ProductApiPayload } from "./types";

const exampleProduct: ProductApiPayload = {
    category_id: '3',
    name: 'Super Produkt',
    description: 'Opis produktu',
    price: '99.99',
    ean13: '1234567890123'
};

export async function seedShop() {
    const category = await api.createCategory("First Category from Seed");
    const product = await api.createProduct(exampleProduct);
    // await api.uploadProductImage(1, './images/prod1.jpg');

    //TODO: add real products and images from scrapper
}
cleanDatabase();
seedShop();