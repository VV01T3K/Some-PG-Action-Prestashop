export interface Product {
  url: string;
  name: string;
  subtitle: string;
  price_whole: string;
  price_fraction: string;
  price: string;
  price_description: string;
  price_original: string;
  price_discount_percentage: string;
  price_discount_footnote: string;
  description_list: string[];
  description_long: string;
  product_tag: string[];
  product_specifications: Record<string, string>;
  linked_categories_list: Record<string, string>;
  image_urls: string[];
  thumbnail_urls: string[]; // maybe not needed, also there are a few cases without scrapped thumbnails
}

export interface ProductApiPayload {
  category_default_id: string;
  category_ids_xml: string;
  name: string;
  description: string;
  price: string;
  ean13: string;
}