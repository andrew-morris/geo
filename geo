#!/usr/bin/python

try:
	import pygeoip
except:
	print '[+] Please install pygeoip python module before continuing'
        exit()
import sys

filename = sys.argv[0]
geoDbPath = '/opt/GeoIP/GeoLiteCity.dat'

def usage():
	print '[+] Geo.py'
	print '[+] Usage: python %s <ip-address>' % filename
	exit()

if len(sys.argv) != 2:
	usage()

ip = sys.argv[1]
gi = pygeoip.GeoIP(geoDbPath)

def query(target):
	record = gi.record_by_addr(target)
	city = record['city']
	region = record['region_code']
	country_name = record['country_name']
	country_code = record['country_code']
	latitude = record['latitude']
	longitude = record['longitude']
	print '[+] IP Address: %s\t\tCountry: %s\t\tRegion: %s\t\tCity: %s\t\tCoordinates: %.5f,%.5f' % (target, country_name, region, city, latitude, longitude)
try:
	query(ip)
except:
	print '[!] IP Address: %s\t\tError: Unable to print IP information' % ip
	exit()
