voltage = [V_s(end),V_sm(end),V_sm1(end),V_mr(end),V_r(end)];
length=0:50:400;
variableNames = {'V_s', 'V_sm', 'V_sm1', 'V_mr', 'V_r'};
plot(length,voltage,'-o',LineWidth=1,MarkerFaceColor='b');
ylabel('Voltage \rightarrow');
xlabel('Length \rightarrow');
grid on;
title("Mid Point voltage")

x = length;% for compensated data
y = voltage;

for i = 1:numel(x)

    if mod(i,2) == 0         
        vAlign = 'top';    

    else                   
        vAlign = 'bottom';

    end

    text(x(i), y(i), sprintf('%s=%.2fV', variableNames{i}, y(i)), ...
        'VerticalAlignment', vAlign, 'HorizontalAlignment', 'center', ...
        'FontSize', 12, 'Color', 'blue', 'FontWeight', 'bold');
end