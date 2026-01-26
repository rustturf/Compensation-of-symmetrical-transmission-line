voltage = [Vs(end),Vms(end),Vm1(end),Vms1(end),Vm(end),Vmr(end),Vm2(end),Vmr1(end),Vr(end)];
length=0:50:400;
variableNames = {'Vs', 'Vms', 'Vm1', 'Vms1', 'Vm', 'Vmr', 'Vm2', 'Vmr1', 'Vr'};
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
        'FontSize', 8, 'Color', 'blue', 'FontWeight', 'bold');
end