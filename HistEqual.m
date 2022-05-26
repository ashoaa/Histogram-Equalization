function img_histeq = HistEqual(img)
n = numel(img(:));
h = zeros(1,256);
for i = 1:256
    t = img == (i-1);
    h(i) = sum(t(:));
end
p = h/n;
img_histeq = img;
for i = 1:256
   f = round(255*sum(p(1:i))); 
   mask = img == (i-1);
   img_histeq(mask) = f;
end
end