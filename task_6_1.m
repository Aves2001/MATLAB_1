try
    disp('������� ��� ��� �����:');
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
            if b == 0
                error('���������� ������ �� ����');
            end
        catch ex
            err=1;
            disp(ex.message);
        end
    end

    rezult1 = sprintf('���� ������� �����: %g', a+b);
    disp(rezult1);

    rezult2 = sprintf('������� �� ������ 2-�� ����� �� 1-�: %g', mod(b,a));
    disp(rezult2);
    
    rezult3 = sprintf('ֳ�� ������� �� ������ 1-�� ����� �� 2-�: %g', fix(a/b));
    disp(rezult3);
catch ex
    disp('�������:');
    disp(ex.message);
end