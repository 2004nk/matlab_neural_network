function costf = cost_calc(op, res, tot)
    costf = 0;
    for i = 1:tot
        for j = 1:10
            costf = costf + (-res(j, i)*log(test(j, i)));
        end
    end
    costf = costf / tot;
end
