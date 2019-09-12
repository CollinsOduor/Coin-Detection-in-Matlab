function coins_processed = main()
    clear;
    [coins_original, coins_gray] = readImages('C:\Users\WENDY\Documents\MATLAB\coin detection\coins\phone\coin.jpg');
    coins_eq = histEqualization(coins_gray);
    coins_processed = processCoins(coins_eq);
    [center, radius] = getProperties(coins_processed);
    hold on
    viscircles(center,radius);
    hold off
    value = classifyCoins(radius);
    figure(3)
    imshow(coins_original)
    title(['Total value is ', num2str(value)])
end