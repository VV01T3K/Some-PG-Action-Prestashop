# 🛍️ Clone Sklepu action.com na PrestaShop

## 📝 Opis Projektu

Repozytorium zawiera klon sklepu internetowego **action.com**, zaimplementowany na platformie **PrestaShop** w wersji **1.7.8.11**.

Projekt ten został stworzony jako kompleksowe środowisko e-commerce, wykorzystujące konteneryzację **Docker** do łatwego uruchamiania i zarządzania usługami, oraz nowoczesne narzędzia do automatyzacji danych i testowania.

---

## 🛠️ Wykorzystane Technologie i Wersje Oprogramowania

Projekt opiera się na architekturze mikroserwisów z wykorzystaniem **Docker Compose** do orkiestracji następujących usług:

### Aplikacja Główna (Sklep)
* **Platforma E-commerce:** **PrestaShop 1.7.8.11** (wersja `1.7.8.11-fpm`).
* **Serwer Web:** **Caddy 2** (jako reverse proxy i serwer plików).
* **Baza Danych:** **MariaDB 12.0** (główna baza danych PrestaShop).
* **Cache/Session:** **Valkey** (fork Redis, używany do obsługi sesji i cachowania).

### Scrapper Danych
* **Scrapper:** Skrypt napisany w **TypeScript**.
* **Runtime:** Uruchamiany za pomocą **Bun** (wydajny runtime JavaScript/TypeScript).
* **Funkcja:** Odpowiedzialny za scrapowanie wybranych kategorii produktów z oryginalnego sklepu.

### Automatyzacja Testów
* **Framework Testowy:** **Selenium** (wersja 4.15.0).
* **Architektura:** Wykorzystuje **Selenium Grid** z kontenerami `selenium-hub`, `chrome` i `firefox` do równoległego uruchamiania testów przeglądarkowych.

---

### Wymagania Wstępne
1.  Zainstalowany [Docker](https://docs.docker.com/get-docker/) (w tym Docker Compose).
2.  Zainstalowany edytor **VS Code**.
2.  Zainstalowane rozszerzenie **Dev Containers** w edytorze VS Code.

### 🚀 Instrukcja Uruchomienia

1.  **Klonowanie Repozytorium:**
    Zaleca się użycie funkcji **Dev Containers: Clone Repository in Container Volume** w VS Code.
2.  **Start Usług:**
    Po załadowaniu środowiska, otwórz zintegrowany terminal w DevContainerze i wywołaj wbudowany skrypt do uruchomienia wszystkich usług:
    ```bash
    bun presta:up
    ```
?? ustawienie pliku hosts ??  
?? instrukcja uruchamiania scrappera tutaj czy lepiej zostawić to w readme katalogu scrappera ??  
?? instrukcja uruchamiania selenium tutaj czy  ⬆️ ??  
?? dostępność - gdzie sklep jest dostępny po uruchomieniu ??  

---

## 👨‍💻 Skład Zespołu

Lista osób zaangażowanych w rozwój projektu:

| Imię i Nazwisko | ?? Rola w Projekcie ?? | Kontakt |
| :--- | :--- | :--- |
| Wojciech Siwiec | Lider Zespołu, ...| [github.com/VV01T3K](https://github.com/VV01T3K) |
| Filip Pudlak | ... | [github.com/TrueDogeKing](https://github.com/TrueDogeKing) |
| Paweł Narwojsz | ... | [github.com/pawel491](https://github.com/pawel491) |
| Bartosz Łyskanowski | ... | [github.com/bartilyska](https://github.com/bartilyska) |