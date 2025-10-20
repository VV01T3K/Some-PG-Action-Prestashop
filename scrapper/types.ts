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
  product_tag: string[];
  product_specifications: Record<string, string>;
  linked_categories_list: Record<string, string>;
  images?: string[]; // TODO:
}
