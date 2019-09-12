function coins_processed = processCoins(coin)
    coins_processed = coin < 100;
    coins_processed = imfill(coins_processed, 'holes');
    se = strel('disk',200);
    coins_processed = imopen(coins_processed,se);
    figure(2)
    imshow(coins_processed)
end