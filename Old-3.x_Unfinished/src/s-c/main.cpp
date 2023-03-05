// Super-Console 3.0 Beta by 020-340
// Wersja oparta na standardzie C++
// U¿yte biblioteki:
// curses.h (z zalinkowanym pdcurses.dll)
// fstream (Obsluga strumienia plikow)
// cstdlib (Funkcje system() i abort())
// vector (Uzycie wektorow)
// string (Zmienna tekstowa)
// sys/stat.h (Statystyki pliku pobierane w celu sprawdzenia jego istnienia)
//
// Licencja: GNU General Public License v3 (GNU GPL v3)
// Mozesz modyfikowac ten program i rozpowszechniac go na stronie glownej S-C, pod warunkiem,
// ze bedzie on opublikowany pod licencja GNU GPL i modyfikacja bedzie udostepniona wraz z kodem zrodlowym.
//
// 2013 by 020-340
//
// Program ten dziala w podsystemie MS-DOS
// Autor: 020-340

#include "ccpcore.h"
#include <curses/curses.h>
#include <vector>
#include <fstream>

struct cfstc
{
      public:
             void checkProcd();
             void showGood();
             void eundcf();
             bool returnCPcd;
             int clockA;
};

void cfstc::checkProcd()
{
    vector<string> v_fnames;
    ifstream in("cache\\ftable.dat");
    string lineFG;
    while(getline(in, lineFG))
        v_fnames.push_back(lineFG);
    for( int clockA = 0; v_fnames[clockA] != "@@skip"; clockA++)
    {
        const_pch converted;
        converted >> v_fnames[clockA];
        printw("Sprawdzanie pliku ");
        printw(converted);
        printw("... \n");
        if(!exist(converted)); // Module error
        {
            system("cmd /c color 1F");
            clear();
            printw("= = = MODULE MISSING = = =");
            printw("Super-Console can't work in 100% normally, because ");
            printw( converted );
            printw(" file is missing.\n");
            printw("This file is an module, so is only included add-on. Super-Console can work normal without it.");
            printw("It's strongly recommended to reinstall S-C to regain this file.\n");
            printw("\nSuper-Console nie moze pracowac w 100% normalnie, poniewaz nie odnaleziono pliku ");
            printw( converted );
            printw("\nTen plik jest modulem, wiec jest tylko uwzglednionym w programie dodatkiem. Super-Console moze pracowac normalnie bez niego.\n");
            printw("Rekomendowana jest reinstalacja programu, aby odzyskac ten plik.\n");
            printw("\nThis message will appear regularry, else you fix this error.\n");
            printw("Ta wiadomosc bedzie sie pokazywac regularnie, chyba ze naprawisz ten blad.\n");
            printw("\nWybierz opcje\\choose option:\n");
            printw("[0] Abort\\Zakoncz dzialanie programu\n");
            printw("[1] Continue file checking\\Kontynuuj sprawdzanie plikow\n");
            printw("[2] Launch S-C\\Przejdz do inicjalizacji\n");
            short tempCase;
            do
            {
                tempCase = getch();
            } while( getch() > 2 || getch() < 0 );
            switch( tempCase )
            {
            case 0:
                abort();
            case 1:
                break;
            case 2:
                system("cmd /c color 1b");
                system("ccpcore.cmd");
                abort();
            }
        }
        printw("Odnaleziono plik. Sprawdzanie nastepnego . . . ");
        returnCPcd = true; // Kod zatwierdzajacy powodzenie sprawdzania plikow
    };
    if( returnCPcd )
        cfstc::showGood(); // Finalizacja procedury sprawdzania plikow
    else
        eundcf();
}

void cfstc::showGood()
{
     printw("Procedura sprawdzania plikow zakonczona pomylsnie!\n");
}

void cfstc::eundcf() // Undefined check file error
{
    system("cmd /c color 1F");
    clear();
    printw("= = = UNDEFINED CHECK FILE ERROR = = =\n");
    printw("Super-Console failed to start, caused of undefined error that appeared while checking the files.\n");
    printw("Try to restart your S-C.\n");
    printw(" If problem appears regularry, ask 020-340 or reinstall the program.\n");
    printw("\nProgram Super-Console nie moze zostac uruchomiony, poniewaz wystapil niezidentyfikowany blad podczas sprawdzania plikow.\n");
    printw("Sprobuj zrestartowac S-C.");
    printw(" Jezeli problem sie powtarza, poinformuj 020-340 albo zreinstaluj program.\n");
    printw("\nWybierz opcje\\choose option:\n");
    printw("[0] Abort\\Zakocz dzialanie programu\n");
    printw("[1] Check files again\\Sprawdz pliki ponownie\n");
    printw("[2] Launch S-C\\Uruchom S-C\n");
    short tempCase_;
    do
    {
        tempCase_ = getch();
    } while( getch() > 2 || getch() < 0 );
    switch( tempCase_ )
    {
    case 0:
        abort();
    case 1:
        cfstc::checkProcd();
    case 2:
        system("cmd /c color 1b");
        system("ccpcore.cmd");
        abort();
    }
}

void ecore() // Core error
{
     system("cmd /c color 4F");
     clear();
     printw("= = = FATAL CORE ERROR = = =\n");
     printw("Super-Console failed to start, caused of ccpcore.cmd file.\n");
     printw("Please contact with 020-340 or reinstall your S-C.\n");
     printw("\nProgram Super-Console nie moze zostac uruchomiony, poniewaz nie odnaleziono pliku ccpcore.cmd.\n");
     printw("Prosze skontaktowac sie z 020-340 lub przeinstalowac S-C.\n");
     attron(A_BOLD);
     printw("Within this file Super-Console can't work normally.\n");
     printw("Bez tego pliku Super-Console nie moze dzialac normalnie.\n");
     attroff(A_BOLD);
     printw("\nNacisnij dowolny klawisz, aby zakonczyc prace programu.");
     getch();
     abort();
}

void eflst() // File not found or damaged
{
     system("cmd /c color 8F");
     clear();
     printw("= = = CHECKLIST FILE ERROR = = =\n");
     printw("Super-Console failed to start, caused of ftable.txt file.\n");
     printw("This file is used to getting the list of the files to be checked.\n");
     printw("It's not recommended to reinstall your S-C, but to download new checklist from \n");
     printw("official 020-340's page.\n");
     printw("\nProgram Super-Console nie moze zostac uruchomiony, poniewaz nie odnaleziono pliku ftable.txt.\n");
     printw("Ten plik jest uzywany do ladowania listy plikow do sprawdzenia.\n");
     printw("Niezalecana jest reinstalacja programu, lecz pobranie nowej checklisty z oficjalnej strony 020-340.\n");
     printw("\nNacisnij dowolny klawisz, aby zakonczyc prace programu.");
     getch();
     abort();
}

void egets() // File list invalid error
{
     system("cmd /c color 8F");
     clear();
     printw("= = = GET LIST ERROR = = =\n");
     printw("Super-Console failed to start, because file ftable.dat is invalid\n");
     printw("This file is used to getting the list of the files to be checked.\n");
     printw("It's not recommended to reinstall your S-C, but to download new checklist from \n");
     printw("official 020-340's page.\n");
     printw("\nProgram Super-Console nie moze zostac uruchomiony, poniewaz plik ftable.dat jest nieprawidlowa lista.\n");
     printw("Ten plik jest uzywany do ladowania listy plikow do sprawdzenia.\n");
     printw("Niezalecana jest reinstalacja programu, lecz pobranie nowej checklisty z oficjalnej strony 020-340.\n");
     printw("\nNacisnij dowolny klawisz, aby zakonczyc prace programu.");
     getch();
     abort();
}

void checkfiles() // Deklaracja funkcji sprawdzania plikow ( checkfiles() )
{
     printw("Sprawdanie pliku rdzenia...\n");
     if(!exist( "ccpcore.cmd" ))
         ecore();
     printw("Sprawdzanie danych petli sprawdzajacej...\n");
     if(!exist("cache\\ftable.dat"))
         eflst();
     cfstc claunch;
     claunch.checkProcd();
}

int main(int argc, char* argv[]) // Glowna funkcja: uruchamianie programu, przygotowywanie interfejsu, "callowanie" skryptu rdzenia, itd..
{
    initscr();
    keypad(stdscr, true);
    noecho();
    system("cmd /c title Super-Console 3.0"); // Nazwa okna
    system("cmd /c color 1b"); // Skrocone i ulepszone ustawianie kolorow
    checkfiles(); // Sprawdzanie plikow (CCPSL)
    clear();
    system("ccpcore.cmd");
    endwin();
    return 0;
}
