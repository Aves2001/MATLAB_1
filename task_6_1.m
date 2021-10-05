try
    disp('Задайте два цілі числа:');
    err = 1;
    while err==1
        try
            err = 0;
            a = input('a = ');
            if (a == floor(a)) == 0
                error('a - має бути цілим числом');
            end
            
            b = input('b = ');
            if (b == floor(b)) == 0
                error('b - має бути цілим числом');
            end
            if b == 0
                error('виконується ділення на ноль');
            end
        catch ex
            err=1;
            disp(ex.message);
        end
    end

    rezult1 = sprintf('Сума заданих чисел: %g', a+b);
    disp(rezult1);

    rezult2 = sprintf('Залишок від ділення 2-го числа на 1-е: %g', mod(b,a));
    disp(rezult2);
    
    rezult3 = sprintf('Ціла частина від ділення 1-го числа на 2-е: %g', fix(a/b));
    disp(rezult3);
catch ex
    disp('Помилка:');
    disp(ex.message);
end