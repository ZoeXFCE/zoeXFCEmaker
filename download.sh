yt-dlp -R 1000 --output "%(uploader)s%(title)s.%(ext)s" -x --audio-format mp3 --embed-thumbnail -v --convert-thumbnail jpg --ppa "EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\"" --exec ffprobe --embed-metadata $1