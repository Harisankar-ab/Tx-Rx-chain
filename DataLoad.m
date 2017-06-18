mp3_content = uint16(fileread('beep.mp3'));
fclose(sRx);
set(sRx,'OutputBuffer',223048);
fopen(sRx);
fPrint(sRx,'%s',mp3_content);
