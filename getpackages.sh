pacman -Q|cut -f 1 -d " " > packagestemp.txt
cat packagestemp.txt | awk '{ printf("%s ", $0) }' > packages.txt
flatpak list --columns=application > flatpakstemp.txt
cat flatpakstemp.txt | awk '{ printf("%s ", $0) }' > flatpaks.txt
rm packagestemp.txt flatpakstemp.txt
