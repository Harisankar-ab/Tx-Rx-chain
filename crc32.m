function crc = crc32( data)

%Initialize variable

crc = uint32 (hex2dec('FFFFFFFF'));
poly = uint32 (hex2dec('EDB88320'));
data = uint8(data);

%computecrc32 value
for i = 1:length(data)
    crc = bitxor(crc,uint32(data(i)));
    for j = 1:8     %do the process 8 timesx=
        mask = bitcmp(bitand(crc,uint32(1)));
        if mask == intmax('uint32'), mask = 0;  
        else mask = mask+1;
        end
        crc = bitxor(bitshift(crc,-1),bitand(poly,mask));
    end
end
crc = bitcmp(crc);
        






