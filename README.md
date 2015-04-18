Avro Tools Docker
=================

Docker around the [Avro Tool](http://avro.apache.org/docs/1.7.7).

Example - Get Help:

    docker run --rm -v `pwd`:/share coderfi/avro-tools

    Version 1.7.7 of Apache Avro
    Copyright 2010 The Apache Software Foundation

    This product includes software developed at
    The Apache Software Foundation (http://www.apache.org/).

    C JSON parsing provided by Jansson and
    written by Petri Lehtinen. The original software is
    available from http://www.digip.org/jansson/.
    ----------------
    Available tools:
              cat  extracts samples from files
          compile  Generates Java code for the given schema.
           concat  Concatenates avro files without re-compressing.
       fragtojson  Renders a binary-encoded Avro datum as JSON.
         fromjson  Reads JSON records and writes an Avro data file.
         fromtext  Imports a text file into an avro data file.
          getmeta  Prints out the metadata of an Avro data file.
        getschema  Prints out schema of an Avro data file.
              idl  Generates a JSON schema from an Avro IDL file
     idl2schemata  Extract JSON schemata of the types from an Avro IDL file
           induce  Induce schema/protocol from Java class/interface via reflection.
       jsontofrag  Renders a JSON-encoded Avro datum as binary.
           random  Creates a file with randomly generated instances of a schema.
          recodec  Alters the codec of a data file.
      rpcprotocol  Output the protocol of a RPC service
       rpcreceive  Opens an RPC Server and listens for one message.
          rpcsend  Sends a single RPC message.
           tether  Run a tethered mapreduce job.
           tojson  Dumps an Avro data file as JSON, record per line or pretty.
           totext  Converts an Avro data file to a text file.
         totrevni  Converts an Avro data file to a Trevni file.
      trevni_meta  Dumps a Trevni file's metadata as JSON.
    trevni_random  Create a Trevni file filled with random instances of a schema.
    trevni_tojson  Dumps a Trevni file as JSON.

Example - Run the `idl` tool on `test.avdl`, outputting to STDOUT:

    docker run --rm -v `pwd`:/share coderfi/avro-tools idl test.avdl

    {
      "protocol" : "Simple",
      "namespace" : "org.apache.avro.test",
      "doc" : "* An example protocol in Avro IDL",
      ...
    }

Example - Run the `idl` tool on `test.avdl`, outputting to a file called `test.avpr`:

    docker run --rm -v `pwd`:/share coderfi/avro-tools idl test.avdl test.avpr

Example - Run the `idl2schemata` tool on `test.avdl`, outputting to files in the local directory:

    docker run --rm -v `pwd`:/share coderfi/avro-tools idl2schemata test.avdl
