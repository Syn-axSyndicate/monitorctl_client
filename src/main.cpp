#include"core_packs/mu.h"
int main() {
    printf("\n---program initiated---\n");
    FILE *fptr = fopen("process.json", "w");
    if (fptr == NULL) {
        fprintf(stderr, "{'content':'Failed to open file for writing'}\n");
        return 1;
    }

    json_file(fptr);

    fclose(fptr);
    return 0;
}