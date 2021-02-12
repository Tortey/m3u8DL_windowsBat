@echo off

set ffmpeg_path=C:\Users\user\Desktop\ffmpeg-N-101017-gcfcc36240f-win64-gpl\bin\

set out=%~n2
if "" == "%2" set out=%~n1

echo %1
echo %~n1
echo %out%


rem echo %ffmpeg_path%ffmpeg.exe -protocol_whitelist file,http,https,tcp,tls,crypt -i %1 -movflags faststart -c copy -bsf:a aac_adtstoasc "%~n1.mp4"

"%ffmpeg_path%ffmpeg.exe" -protocol_whitelist file,http,https,tcp,tls,crypt -i %1 -movflags faststart -c copy -bsf:a aac_adtstoasc "%out%.mp4"

