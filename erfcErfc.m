clc
clear

fprintf(2,'Universidad de las Fuerzas Armadas ESPE ');
fprintf('\nTransferencia de Masa');

fprintf('\n\nElija las opciones');
fprintf('\n\t1. Encontrar erf');
fprintf('\n\t2. Encontrar erfc');
fprintf('\n\t3. Encontrar el valor de x');
fprintf('\n\t4. Gráficar erf y erfc por rango');
indice = input('\nEnter a number: ');

switch indice
    case 1
        clc
        fprintf(2,'\t\t\t\tEncontrar erf ')
        x = input('\nIngrese el valor de x: ');
        fprintf('El valor de erf es: ')
        erf(x)
    case 2
        clc
        fprintf(2,'\t\t\t\tEncontrar erfc ')
        y = input('\nIngrese el valor de x: ');
        fprintf('El valor de erfc es:  ')
        erfc(y)
    case 3
        clc
        fprintf(2,'\t\t\t\tEncontrar x ')
        fprintf('\n\nElija las opciones');
        fprintf('\n\t1. Ingresar erf');
        fprintf('\n\t2. Ingresar erfc');
        indicedos = input('\n\nEnter a number: ');
        switch indicedos
            case 1
                fprintf('\t\t\t\tIngresar erf ')
                %Solción para x
                syms x
                valorUno = input('\n\nIngrese el valor: ');
                clc
                valorXX=solve((1-erfc(x))==valorUno,x);
                clc
                fprintf(2,'El valor de x es: ');
                valorXX
            case 2
                fprintf('\t\t\t\tIngresar erfc ')
                %Solción para x
                syms x
                valorDos = input('\n\nIngrese el valor: ');
                clc
                valorX=solve(erfc(x)==valorDos,x);
                clc
                fprintf(2,'El valor de x es: ');
                valorX
            otherwise
                disp('Lo sentimos no existe ese valor en el menú, por favor vuelve a intentar')

        end 
    case 4
        clc
        fprintf('\t\t\t\tIngresar el rango: ')
        limInf = input('\n\nIngrese el inferior: ');
        limSup = input('\n\nIngrese el superior: ');
        x = limInf:0.1:limSup;
        y = erf(x);
        compl = erfc(x);
        plot(x,y,x,compl)   
        grid on
        title('Gráfica de Erf & Erfc')
        xlabel('x')
        ylabel('Erf & Erfc')
        legend('Erf','Erfc');
        
    otherwise
        disp('Lo sentimos no existe ese valor en el menú, por favor vuelve a intentar')
end