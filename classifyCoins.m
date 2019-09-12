function value = classifyCoins(radius)
    one_bob = 0;
    five_bob = 0;
    ten_bob = 0;
    twenty_bob = 0;
    forty_bob = 0;
    
    for i=1:numel(radius(:,1))
        if radius(i) <= 336.5220111
            five_bob = five_bob + 1;
        elseif radius(i) <= 405.7773459
            ten_bob = ten_bob + 1;
        elseif radius(i) <= 414.9466707
            one_bob = one_bob + 1;
        elseif radius(i) <= 480.1206565
            twenty_bob = twenty_bob + 1;
        elseif radius(i) <= 530.0675983
            forty_bob = forty_bob + 1;
        end
    value = one_bob + five_bob*5 + ten_bob*10 + twenty_bob*20 + forty_bob*40;
    pause(2);
    end
end