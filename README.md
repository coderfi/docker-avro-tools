Avro Tools IDL Docker
=====================

Invokes the [Avro IDL Tool](http://avro.apache.org/docs/1.7.7/idl.html) which can convert `avdl` files to `avpr` files.

Example (default is `--help`):

    docker run --rm -v `pwd`:/share coderfi/avro-tools-idl:1.7.7

Example (assuming the `test.avdl` file is in the current directory):

    docker run --rm -v `pwd`:/share coderfi/avro-tools-idl:1.7.7 test.avdl test.avpr

The above will place the `test.avpr` file into the current directory.

Example (write to stdout):

    docker run --rm -v `pwd`:/share coderfi/avro-tools-idl:1.7.7 test.avdl
