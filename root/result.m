function [arr] = result(arr,x,y,px,py,tot)
    c = 2;
    im = imread('img1.png');
    while(c<=tot+1)
        if (isvalid(x-1,y)==1 && arr(x-1,y)==c)
            for i=px-100:px
                im(i,py,1) = 0;
                im(i,py,2) = 0;
                im(i,py,3) = 0;
                im(i,py-1,1) = 0;
                im(i,py-1,2) = 0;
                im(i,py-1,3) = 0;
                im(i,py+1,1) = 0;
                im(i,py+1,2) = 0;
                im(i,py+1,3) = 0;
            end
            px = px-100;
            x = x-1;
        end
        if (isvalid(x+1,y)==1 && arr(x+1,y)==c)
            for i=px:px+100
                im(i,py,1) = 0;
                im(i,py,2) = 0;
                im(i,py,3) = 0;
                im(i,py-1,1) = 0;
                im(i,py-1,2) = 0;
                im(i,py-1,3) = 0;
                im(i,py+1,1) = 0;
                im(i,py+1,2) = 0;
                im(i,py+1,3) = 0;
            end
            px = px+100;
            x = x+1;
        end
        if (isvalid(x,y-1)==1 && arr(x,y-1)==c)
            for i=py-100:py
                im(px,i,1) = 0;
                im(px,i,2) = 0;
                im(px,i,3) = 0;
                im(px-1,i,1) = 0;
                im(px-1,i,2) = 0;
                im(px-1,i,3) = 0;
                im(px+1,i,1) = 0;
                im(px+1,i,2) = 0;
                im(px+1,i,3) = 0;
            end
            py = py-100;
            y = y-1;
        end
        if (isvalid(x,y+1)==1 && arr(x,y+1)==c)
            for i=py:py+100
                im(px,i,1) = 0;
                im(px,i,2) = 0;
                im(px,i,3) = 0;
                im(px-1,i,1) = 0;
                im(px-1,i,2) = 0;
                im(px-1,i,3) = 0;
                im(px+1,i,1) = 0;
                im(px+1,i,2) = 0;
                im(px+1,i,3) = 0;
            end
            py = py+100;
            y = y+1;
        end
        c = c+1;
    end
    imshow(im);
end