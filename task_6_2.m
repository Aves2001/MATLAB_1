try
    a=-5;
    b=1;
    c=8;
    y=((a-b)/(2*b+c))+(1/a);

    str1 = sprintf('a = %g\nb = %g\nc = %g\n', a,b,c);
    str2 = strcat('$y = \frac{a-b}{2b+c}+\frac{1}{a} = ',sprintf('%g', y),'$');
    text(0.15,0.5,str1,'Interpreter','latex', 'FontSize',48);
    text(0.15,0.2,str2,'Interpreter','latex', 'FontSize',48);
catch ex
    disp('Помилка:');
    disp(ex.message);
end