geo
===

Command line tool to grab basic geo IP information on an IP address. Current version is powered by the MaxMind database. This is really simple but very useful 
for quick IP lookups on the command line. 

## USAGE

IP query:
```
$ geo 8.8.8.8
[+] IP Address: 8.8.8.8		Country: United States		Region: CA		City: Mountain View		Coordinates: 37.38600,-122.08380
```

Ghetto multi IP query:
```
$ for i in $(cat /tmp/ips.txt);do geo $i;done
[+] IP Address: 1.2.3.4		Country: Australia		Region: None		City: None		Coordinates: -27.00000,133.00000
[+] IP Address: 5.6.7.8		Country: Germany		Region: None		City: None		Coordinates: 51.00000,9.00000
[+] IP Address: 9.10.11.12		Country: United States		Region: NC		City: Durham		Coordinates: 35.99400,-78.89860
[+] IP Address: 13.14.15.16		Country: United States		Region: CT		City: Norwalk		Coordinates: 41.12710,-73.44160
```
## TODO
* Add functionality to read from file
* Add geo2csv
* Fix geo2csv so it doesn't suck
* Add support for online query options
* Add update support for Geo.dat

## DISCLAIMER

This information is not gospel. Do not rely on this for legal purposes. Information from the free MaxMind database is often inaccurate.
