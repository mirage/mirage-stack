### v4.0.0 (2021-12-15)

* Deprecate mirage-stack. The module types are now part of tcpip (>= 7.0.0)
  (#21 @hannesm)

### v3.0.0 (2021-11-15)

* Remove Mirage_stack_lwt module (#20 @hannesm)
* mark listen_{tcp(v4),udp(v4)} as deprecated, enow that mirage-protocols 6.0.0
  contains UDP.listen and TCP.listen (#20 @hannesm)
* Remove mirage-device dependency (#20 @hannesm)

### v2.2.0 (2020-09-28)

* add Mirage_stack.V4V6 module type (#19 @hannesm)

### v2.1.0 (2020-08-31)

* add Mirage_stack.V6 module type (#18 @MagnusS)

### v2.0.1 (2019-11-04)

* provide deprecated Mirage_stack_lwt for smooth transition (#17 @hannesm)

### v2.0.0 (2019-10-25)

- remove mirage-stack-lwt package (#15 @hannesm)
- specialise on Lwt.t and Cstruct.t directly (#15 @hannesm)
- raise lower OCaml bound to 4.06.0 (#15 @hannesm)

### v1.4.0 (2019-02-24)

- port build system to dune
- adjuust to opam2 metadata

### v1.3.0 (2018-09-15)

- remove unused type `netif` and `'netif config` from V4 signature
- remove `'netif stackv4_config` and `socket_stack_config`
- adjust to mirage-protocols 1.4.0: remove `ip` from UDPV4 and TCPV4

### v1.2.0 (2017-09-06)

- add an optional argument ?keepalive to `listen_tcpv4` which allows TCP
  keepalives on accepted connections.
- jbuilder is now a build dependency

### v1.1.0 (2017-06-16)

- port to Jbuilder

### v1.0.0 (2016-12-29)

- import V4 module type from mirage-types and mirage-types-lwt, where it was STACKV4
