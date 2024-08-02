#ifndef MU_H
#define MU_H
#ifdef __cplusplus
extern "C" {
#endif
#include <windows.h>
#include <tchar.h>
#include <stdio.h>
#include <psapi.h>
int getMemoryInfo(DWORD processID, FILE *fptr);
void json_file(FILE *fptr);
#ifdef __cplusplus
}
#endif
#endif