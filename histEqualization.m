function coins_eq = histEqualization(coins)
    coins_eq = histeq(coins);
    figure(1);
    subplot(2,2,1);
    imshow(coins);
    title('Grayscale Image')
    subplot(2, 2, 2)
    imhist(coins);
    title('Grayscale image histogram')
    subplot(2, 2, 3);
    imshow(coins_eq);
    title('Equalized Image')
    subplot(2, 2, 4)
    imhist(coins_eq);
    title('equalized image histogram')
end

