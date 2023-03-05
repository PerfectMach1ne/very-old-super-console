// Standardowa biblioteka CCP Core dla wersji Super-Console 3.0.0047 Beta
// CCPSL - CCP (Custom Command Prompt) Standard Library
// Super-Console©
// 2013 by 020-340
//
// Program ten dziala w podsystemie MS-DOS
// Autor: 020-340

#ifndef CCPSL_HEADER
#define CCPSL_HEADER

#include <cstdlib>
#include <string>
#include <sys/stat.h>
using namespace std;
const string CCP_VER = "Super-Console 3.0 Beta, wersja Standard, build #0053";
typedef const char* const_pch;

int exist( const_pch fileName ) // Budowa funkcji sprawdzajacej - exist( const char* )
{
    struct stat buf;
    if(stat(fileName, &buf) == 0)
        return 1;
    else
        return 0;
}

#endif // CCPSL_HEADER
