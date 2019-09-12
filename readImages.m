function [coins_original, coins_gray] = readImages(path)
    coins_original = imread(path);
%     [rows, cols, channels] = size(coins_original);
%     if rows/cols > 1.8 
%         rows = 512*1.5;
%         cols = 512;
%     elseif rows/cols < 0.5
%         cols = 512;
%         rows = 512*1.5;
%     else
%         rows = 512;
%         cols = 512;
%     end
%   coins_original = imresize(coins_original, [rows cols]);
    coins_gray=rgb2gray(coins_original);
end