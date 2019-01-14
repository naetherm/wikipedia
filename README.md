# Wikipedia

Download and extraction scripts for Wikipedia XML dumps.

## USAGE

Call ```url_generator.sh``` with the list of languages you want to download, e.g. ```url_generator.sh en de fr```.

Through this a file ```urllist.txt``` will be generated. Now execute the ```download.sh``` file, which will download
all required files for you and save then in a directory determined through ```$(date --iso)```.

If you call ```url_generator.sh``` without any parameter the urllist.txt will just contain links for the english
wikipedia. Through the parameter ```--full``` all available language packages (evaluation date 8.01.2019) will
be downloaded (so use this parameter with care!).