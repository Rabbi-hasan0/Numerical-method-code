y = @(x) (x^3)-(0.165*(x^2))+3.993*(10^(-4));

x0 = input("Enter first guess: " );
x1 = input("Enter second guess: " );
max_iterations = input("Enter max iterations: " );
tolerance = input("Enter tolerance: " );

iterations = 0;
relative_approximate_error= [];
while iterations < max_iterations
  x2=x1-(y(x1)*(x1-x0))/(y(x1)- y(x0));
    relative_approximate_error=abs(x2-x1)/x2;
    if relative_approximate_error<tolerance
       break;
    endif
    x0=x1;
    x1=x2;
    iterations=iterations+1;
endwhile
fprintf("No of iterations: %d \n", iterations);
fprintf("Root: %d \n", x2);


/**
Enter first guess: 0.02
Enter second guess: 0.05
Enter max iterations: 100
Enter tolerance: 1e-6
No of iterations: 4
Root: 0.0623776
**/
