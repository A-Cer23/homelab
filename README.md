I want to schedule downloads of shows and movies
I want to store the downloaded shows and movies into the NAS
I want to run jellyfin using the NAS as file sources


requirements
- [] radarr: for movies
- [] sonarr: for tv
- [x] bittorrent client (headless is required)


resources:
https://wiki.servarr.com/


future plans:
introduce live tv style of watching the content downloaded
- this will aggrogate the content into an iptv style stream: https://ersatztv.org/
- apparently jellyfin can take iptv streams so look into getting the data from ersatztv to display in jellyfin

introduce live sports

introduce the ability to schedule and download books
 - automaitcally send the downloaded books to kindle
 - resource: https://github.com/blampe/rreading-glasses