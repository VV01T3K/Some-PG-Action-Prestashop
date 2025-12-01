1. bun run products_scrapper.ts -> wynikiem jest products.json z wszytkimi danymi o wszystkich produktach
2. bun run download_images.ts -> pobiera wszystkie zdjęcia wszystkich produktów(z url'i co są w products.json)

>można(a nawet i trzeba) skipnąć te 2 pierwsze kroki i pobrać images/ oraz products.json z repo branch images
>po pobraniu upewnić się, że znajduje się to w shop-data/scrapper-results/

>klucz api obecnie jest w constants.ts
3. !!!włączenie API: panel admin, panel po lewej sekcja Konfiguruj -> Zaawansowane -> API: 
    "Włącz API PrestaShop"(to czasem z jakiegoś powodu samo się wyłącza po zapisie), 
    Dodaj nowy klucz API, wklej klucz, ustaw uprawnienia(dla każdego max): 
    categories, images, manufacturers, product_feature_values, product_features, products, stock_availables, suppliers, tax_rule_groups
4. run seed.ts -> czyści dane przykładowe, tworzy wszystkie kategorie->podkategorie->..., tworzy wszystkie produkty z wszystkimi zdjęciami i ustawia ilość dostępnych produktów


Uruchomienie:
1. Odpalamy panel admina prestashopa -> Konfiguruj -> Zaawansowane -> Wydajność -> zjeżdżamy na sam dół i wyłączamy "Użyj pamięci podręcznej", zapisać i upewnić się że zapisało się(czasem trzeba kilka razy to zrobić żeby się zapisało)
2. Wywołać bun products:sync
3. Po zakończeniu dodawania produktów można włączyć z powrotem cache

Zdjęcia kategorii należy dodać ręcznie.