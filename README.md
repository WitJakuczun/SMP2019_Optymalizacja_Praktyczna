
<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [Przygotowanie środowiska developerskiego](#przygotowanie-środowiska-developerskiego)
    - [Instalacja oprogramowania](#instalacja-oprogramowania)
    - [Przygotowanie projektu](#przygotowanie-projektu)
        - [Pobranie projektu z git](#pobranie-projektu-z-git)
        - [Pobranie zależności](#pobranie-zależności)
- [Użycie gotowej paczki](#użycie-gotowej-paczki)
    - [Pobierz odpowiednią paczkę](#pobierz-odpowiednią-paczkę)
    - [Przygotuj projekt](#przygotuj-projekt)

<!-- markdown-toc end -->

# Przygotowanie środowiska developerskiego #

**Założenie** Zakładamy użycie Windows 10. W przypadku innego systemu OS prosimy o kontakt.

## Instalacja oprogramowania ##

Do poprawnego działania potrzeba:

* [R w wersji 3.5+](https://cloud.r-project.org/)
* [R Suite w wersji 0.35-251](https://rsuite.io/RSuite_Tutorial.php?article=rsuite_installation.md)
* [R Studio](https://rstudio.com)

## Przygotowanie projektu ##

Poniżej opisujemy instrukcję przygotowanie projektu w środowisku developerskim. 

### Pobranie projektu z git ###

Pobierz projekt instrukcją
```bash
git clone  https://github.com/WitJakuczun/SMP2019_Optymalizacja_Praktyczna.git
```

W wyniku utworzy się katalog o nazwie `SMP2019_Optymalizacja_Praktyczna`. Przejdź do tego katalogu.

### Pobranie zależności ###

Pobierz zależności używając instrukcji

```bash
rsuite proj depsinst -v
```

Po paru minutach projekt będzie miał wszystkie zależności.

# Użycie gotowej paczki #

Dzięki narzędziu [https://rsuite.io](https://rsuite.io/RSuite_Tutorial.php?article=rsuite_installation.md) przygotowaliśmy paczki z rozwiązaniem gotowe do użycia bez potrzeby instalacji pakietów i R Suite. **Wymagany jest zainstalowany R w wersji 3.5+**.

## Pobierz odpowiednią paczkę ##

Dostępne paczki:

* [Windows 10](https://s3.eu-central-1.amazonaws.com/wlog-share/SMP2019/Windows10_SMP2019_Optymalizacja_Praktyczna_1.0x.zip) -

## Przygotuj projekt ##

Rozpakuj paczkę do katalogu `SMP2019_Optymalizacja_Praktyczna`.

# Uruchomienie rozwiązania #
Niezależnie czy tworzyłeś środowisko developerskie czy skorzystałeś z gotowej paczki możesz teraz uruchomić przykłady, które omawiałem podczas wykładu.

Przykłady uruchmiasz poleceniem:

```bash
Rscript R/wezel_<nr>.R
```
gdzie `nr` jest numerem skryptu zgodnie z kolejnymi węzłami z wykładu.

Jeśli chcesz zobaczyć jak solver GLPK radzi sobie z pełnym rozwiązaniem zadania możesz użyć instrukcji:

```bash
Rscript R\solve_mip.R
```
