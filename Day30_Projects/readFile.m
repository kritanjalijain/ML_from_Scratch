function file_contents = readFile(filename)
%READFILE reads a file and returns its entire contents 

% Load File
fid = fopen(filename);
if fid
    file_contents = fscanf(fid, '%c', inf);
    fclose(fid);
else
    file_contents = '';
    fprintf('Unable to open %s\n', filename);
end

end

