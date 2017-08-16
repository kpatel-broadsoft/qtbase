#include <sqlcipher/sqlite3.h>

int main(int, char **)
{
    sqlite3_open_v2(0, 0, 0, 0);
    return 0;
}
