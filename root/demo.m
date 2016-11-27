clear all;
close all;


arr = zeros(8);

im = imread('img1.png');

str = 1;
stc = 1;

r = 1;
px = 25;
py = 25;

for i=25:100:750
    c = 1;
    for j=25:100:550
        if (im(i,j,2)==76)
            str = r;
            stc = c;
            px = i;
            py = j;
        elseif (im(i,j,1)==0)
            arr(r,c) = -1;
        end
        c = c+1;
    end
    r = r+1;
end

disp(arr);
disp(str);
disp(stc);

arr(str,stc) = 1;

tot = getsteps(arr);

arr = backtrack(str,stc,2,arr,tot+2);

arr = result(arr,str,stc,px,py,tot);
