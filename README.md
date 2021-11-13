# <project>

## Dynamic Linking

Linking to `<project>`:

```bash
# 1) include and use <project> in your project
# 2) generate object file for your project
gcc -I ../path/to/<project> -c main.c -o main.o
# 3) generate shared object file
make
# 4) link your project to <project>
gcc -o main main.o -L../path/to/<project> -l<project>
# you may need to add the lib location to your PATH
```
