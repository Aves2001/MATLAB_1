try
    disp('������ ������� ����� ������, a �� b:');
    err = 1;
    while err==1
        try
            err = 0;
            a = input('a = ');
            if (a == floor(a)) == 0
                error('a - �� ���� ����� ������');
            end
            b = input('b = ');
            if (b == floor(b)) == 0
                error('b - �� ���� ����� ������');
            end
            if a-2*b < 0
                error('����� � ������� �����');
            elseif (sqrt(a-2*b)+2*b) == 0
                error('���������� ������ �� ����');
            end
        catch ex
            err=1;
            disp(ex.message);
        end
    end
    c = ((2*a-b)*(2*b+a))/(sqrt(a-2*b)+2*b);

    str1 = sprintf('a = %g\nb = %g', a,b);
    str2 = strcat('$c = \frac{(2a-b)\cdot(2b+a)}{\sqrt{a-2b}+2b} = ',sprintf('%g', c),'$');
    text(0.15,0.6,str1,'Interpreter','latex', 'FontSize',48);
    text(0.15,0.2,str2,'Interpreter','latex', 'FontSize',48);
catch ex
    disp('�������:');
    disp(ex.message);
end