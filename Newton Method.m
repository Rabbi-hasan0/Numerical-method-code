y = @(x) (x^3)-(23*x^2)+(142*x)-120;
y1= @(x) (3*x^2)- (46*x) + 142;
guess1 = input("Enter first guess: " );
max_iterations = input("Enter max iterations: " );
tolerance = input("Enter tolerance: " );

iterations = 0;
errors = [];
prevGuess = 0;

while iterations < max_iterations
    iterations = iterations + 1;
    
    x2=guess1 - y(guess1)/y1(guess1);
    relative_error= abs(x2-guess1)/x2;
    errors =[errors, relative_error];
    if relative_error< tolerance
      root=x2;
      break;
    endif
    guess1=x2;
   
endwhile
root= x2;
fprintf("No of iterations: %d \n",iterations);
fprintf("Root: %d \n",root);
plot([1:1:length(errors)],errors);


/** 
Input:
Enter first guess: 100
Enter max iterations: 100
Enter tolerance: 1e-6 
**/
