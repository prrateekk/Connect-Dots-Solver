function [verdict] = isvalid(x,y)
    if x>=1 && x<=8 && y>=1 && y<=6
        verdict = 1;
    else
        verdict = 0;
end