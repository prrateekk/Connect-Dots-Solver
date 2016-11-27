function [tot] = getsteps(arr)
    tot = 0;
    for r=1:8
        for c=1:6
            if (arr(r,c)==0)
                tot = tot+1;
            end
        end
    end
end