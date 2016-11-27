function [arr] = backtrack(x,y,c,arr,tot)

    if (c==tot)
        disp(arr);
        arr(8,7) = 1;
    end
    
    if (isvalid(x-1,y)==1 && arr(x-1,y)==0)
        arr(x-1,y) = c;
        arr = backtrack(x-1,y,c+1,arr,tot);
        if (arr(8,7)==0)
            arr(x-1,y) = 0;
        end
    end
      
    if (isvalid(x+1,y)==1 && arr(x+1,y)==0)
        arr(x+1,y) = c;
        arr = backtrack(x+1,y,c+1,arr,tot);
        if (arr(8,7)==0)
            arr(x+1,y) = 0;
        end
    end
    
    if (isvalid(x,y-1)==1 && arr(x,y-1)==0)
        arr(x,y-1) = c;
        arr = backtrack(x,y-1,c+1,arr,tot);
        if (arr(8,7)==0)
            arr(x,y-1) = 0;
        end
    end
    
    if (isvalid(x,y+1)==1 && arr(x,y+1)==0)
        arr(x,y+1) = c;
        arr = backtrack(x,y+1,c+1,arr,tot);
        if (arr(8,7)==0)
            arr(x,y+1) = 0;
        end
    end
    
end