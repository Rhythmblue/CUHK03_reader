data = importdata('cuhk-03.mat');
demo = data.detected(1,1);

if ~exist('detected')
    mkdir('detected');
end

if ~exist('labeled')
    mkdir('labeled');
end

id = 0;
folder = data.detected;
for i = 1:length(folder)
    length(folder{i})
    for j = 1:length(folder{i})
        id = id+1;
        id
        for k = 1:10
            img = folder{i}(j,k);
            if  ~isempty(img{1}) 
                imwrite(img{1},['./detected/' num2str(id,'%04d') 'c' num2str(i) 's' num2str(k) '.jpg']);
            end
        end
    end
end

idd = 0;
folder = data.labeled;
for i = 1:length(folder)
    length(folder{i})
    for j = 1:length(folder{i})
        idd = idd+1;
        idd
        for k = 1:10
            img = folder{i}(j,k);
            if  ~isempty(img{1}) 
                imwrite(img{1},['./labeled/' num2str(idd,'%04d') 'c' num2str(i) 's' num2str(k) '.jpg']);
            end
        end
    end
end

id
idd