# zx

Zlib command line interface.


## Usage

```
zx 0.1.0
Zlib command line interface

USAGE:
    zx [FLAGS] [OPTIONS] [FILE]

FLAGS:
    -b, --best          Best (slowest) compression
    -d, --decompress    Decompress
    -f, --fast          Fastest (worst) compression
    -h, --help          Prints help information
    -V, --version       Prints version information

OPTIONS:
    -l, --level <level>    Compressing level (0-9)

ARGS:
    <FILE>    File
```

#### Compressing a file

```bash
zx file > file.zlib
```

The input file can also be read from stdin:

```bash
zx < file > file.zlib
echo "Hello World" | zx > hello.zlib
```

#### Decompressing a file

```bash
echo "Hello World" | zx > hello.zlib
zx -d hello.zlib > hello
```

