# What is elle?

elle is a C implementation of CLSI LIS Services and Protocols to connect medical equipments, middlewares and laboratory systems over TCP/IPv4 networks.

elle supports creation, parsing and transmission of CLSI LIS Frames over TCP/Iv4 networks accordingly to CLSI international standards.

[elle] includes a lot of software modules:

 * libelle - a C library for creating/packing/unpacking LIS Records in Messages/Frames and transmitting them over IPv4 Networks.

   It is implemented as a library of ANSI C language functions enabling C-written applications to establish, use and release multiple connections
   with peer applications for the purpose to exchange LIS Frames in a network end-system architecture based on the TCP/IP Protocols.


 * lsh - The first LIS shell for Linux Systems

   It is implemented as a clone of the [tcsh] shell with extensions to add LIS commands, that include fileutils, connections, LIS Frames generators and senders over TCP/IPv4 Networks.

   [lsh] may be used as both an interactive tool for talking with medical applications and instruments/analyzers using LIS Protocols and an interpreter for the execution of testsuites.

 * lisc - a tiny-compiler able to convert raw LIS text files to C data structures (variables/structures/functions) for direct inclusion in C applications.
   Used mainly for development and consistent QA test environment.

 * liblis-files - a tiny C library for working with in memory LIS files each with its own Sessions/Records.
   Used mainly for development and consistent QA test environment.

 * standalone binary programs to play with LIS Protocols including:
   - fileutils          (lcat, lc, ldump, ltree)
   - production servers (lvald, elled)
   - testing servers    (lnulld, lnakd, lackd, lslowd)
   - testing clients    (lrain, lsndfile)
   - testing generators (lgen)
   - tools              (such a general-purpose elle-plugins loader to build and run complex architectures)

# Dockerhub
A simple Debian Linux container can be found here:
> https://hub.docker.com/r/roccocarbone/elle

and can be easily pulled with the following command:
> docker pull roccocarbone/elle

It is an interactive container, meaning that the Docker-CLI will talk directly with the [lsh] shell included in the container.
