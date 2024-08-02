#include <windows.h>
#include <tchar.h>
#include <stdio.h>
#include <psapi.h>

int getMemoryInfo(DWORD processID, FILE *fptr) {
    HANDLE hProcess;
    PROCESS_MEMORY_COUNTERS pmc;
    HMODULE hMods[1024];
    DWORD cbNeeded;
    unsigned int i;

    printf(">> %u\n", processID);
    fprintf(fptr, "\n\"%u\":{\n", processID);
    hProcess = OpenProcess(PROCESS_QUERY_INFORMATION | PROCESS_VM_READ, FALSE, processID);
    if (hProcess == NULL) {
        fprintf(fptr, "\n},\n");
        return 1;
    }

    if (EnumProcessModules(hProcess, hMods, sizeof(hMods), &cbNeeded)) {
        if (GetProcessMemoryInfo(hProcess, &pmc, sizeof(pmc))) {
            printf("\tWorkingSetSize: %zu bytes\n", pmc.WorkingSetSize);
            fprintf(fptr, "\t\"WorkingSetSize\":\"%zu bytes\n\",", pmc.WorkingSetSize);
        }

        for (i = 0; i < (cbNeeded / sizeof(HMODULE)); i++) {
            TCHAR szModName[MAX_PATH];

            // Get the full path to the module's file.
            if (GetModuleFileNameEx(hProcess, hMods[i], szModName, sizeof(szModName) / sizeof(TCHAR))) {
                // Print the module name and handle value.
                _tprintf(TEXT("\t%s (0x%08X)\n"), szModName, hMods[i]);
                _ftprintf(fptr, TEXT("\"module\":\"%s (0x%08X)\"\n,"), szModName, hMods[i]);
            }
        }
    }

    CloseHandle(hProcess);
    fprintf(fptr, "\n},\n");
    return(0);
}

void json_file(FILE *fptr) {
    DWORD aProcesses[1024], cbNeeded, cProcesses;
    unsigned int i;

    if (!EnumProcesses(aProcesses, sizeof(aProcesses), &cbNeeded)) {
        return;
    }

    // Calculate how many process identifiers were returned.
    cProcesses = cbNeeded / sizeof(DWORD);

    // Print the memory usage for each process.
    fprintf(fptr,"{");
    for (i = 0; i < cProcesses; i++) {
        getMemoryInfo(aProcesses[i], fptr);
    }
    fprintf(fptr,"}");
}
