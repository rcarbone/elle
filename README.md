![logo]

elle - C Toolkit for CLSI LIS01-A2 and LIS02-A2 Protocols
==========================================================

```
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
                       _ _
                   ___| | | ___
                  / _ \ | |/ _ \
                 |  __/ | |  __/
                  \___|_|_|\___|

    elle - C Toolkit for CLSI LIS01-A2 and LIS02-A2 Protocols

    R. Carbone (rocco@tecsiel.it)
    1Q 2020

    SPDX-License-Identifier: BSD-2-Clause-FreeBSD

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
```

# Docker container for the impatients

If you are impatient and not interested in the full story, here is the download button for a docker image with **elle** distribution in an interactive container based on GNU/Debian bullseye-slim (to be minimalist!):
```
    https://hub.docker.com/r/roccocarbone/elle
```

The container is interactive, meaning that the Docker-CLI will talk directly with the LIS shell included in the image.

It can be easily pulled and run using the following commands:
```
   user@somehost 1> docker pull roccocarbone/elle
   Using default tag: latest
   latest: Pulling from roccocarbone/elle
   5eabfc6d6a4a: Already exists 
   a4fb456d8edf: Already exists 
   33d68cfb304e: Already exists 
   2c0096ed9ac4: Already exists 
   Digest: sha256:c967c42c5c09ff2d1ba15c9020f2b14aa33af475493680ef68ab9c4a479d5dcf
   Status: Downloaded newer image for roccocarbone/elle:latest
   docker.io/roccocarbone/elle:latest

   user@somehost 2> docker image ls
   REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
   roccocarbone/elle   latest              f1d55d9f753f        48 minutes ago      85MB

   user@somehost 3> docker run -it roccocarbone/elle

   - lsh 0.1.0 (Apr  5 2020) -- R. Carbone (rocco@tecsiel.it)
   A hack of the popular 'tcsh' with builtin extensions for LIS protocols

   Type 'help' for the list of builtin extensions implemented by this shell.
```

![impatiens]

# What is elle?

**elle** is a C implementation of CLSI LIS Services and Protocols to connect medical equipments, middlewares and laboratory systems over TCP/IPv4 networks.

**elle** includes a lot of software modules:

 * **libelle** - a C library to enable C-written applications to establish, use and release multiple connections with peer applications for the purpose of exchanging LIS Frames/Records in a network end-system architecture based on the TCP/IP Protocols accordingly to CLSI LIS international standards.

 * **lsh** - The first LIS shell for Linux Systems, implemented as a clone of the [tcsh] shell with extensions to add LIS commands, that include fileutils, connections, LIS Frames generators and senders over TCP/IPv4 Networks. **lsh** may be used as both an interactive tool for talking with medical applications and instruments/analyzers using LIS Protocols and an interpreter for the execution of testsuites.

 * **lisc** - a tiny-compiler able to convert raw LIS text files to C data structures (variables/structures/functions) for direct inclusion in C applications. Used mainly for development and a definition of consistent QA test environment.

 * **liblis-files** - a tiny C library for working with in memory LIS files each with its own Sessions/Records. Used mainly for development and a definition of consistent QA test environment.

 * standalone binary programs to play with LIS Protocols including:
   * fileutils          (lcat, lc, ldump, ltree)
   * production servers (lvald, elled)
   * testing servers    (lnulld, lnakd, lackd, lslowd)
   * testing clients    (lrain, lsndfile)
   * testing generators (lgen)
   * tools              (such a general-purpose elle-plugin loader to build and run complex architectures)

## Screenshots

#### A quick tour to lsh available commands.

  ## Hello World!
  ![helloworld]

  ## Additional LIS commands
  ![help]

  ## Connecting/Disconnecting to/from a LIS Server ...
  ![connect]

[logo]:       images/elle.png
[impatiens]:  images/impatiens.png
[helloworld]: images/helloworld.png
[help]:       images/help.png
[connect]:    images/connect.png
