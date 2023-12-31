y = @(x) (x^3)-(23*x^2)+(142*x)-120;

guess1 = input("Enter first guess: " );
guess2 = input("Enter second guess: " );
max_iterations = input("Enter max iterations: " );
tolerance = input("Enter tolerance: " );

iterations = 0;
errors = [];
prevGuess = 0;

while iterations < max_iterations
    iterations = iterations + 1;

    newGuess = (guess1 + guess2) / 2;
    if y(newGuess) == 0
        root = newGuess;
        break;
    elseif y(newGuess) * y(guess1) < 0
        guess2 = newGuess;
    else
        guess1 = newGuess;
    endif
    
    

    if iterations > 1
        relative_error = abs(newGuess - prevGuess) / newGuess;
        errors = [errors, relative_error];
        if relative_error < tolerance
          root = newGuess;
          break;
        endif
    endif

    prevGuess=newGuess;
endwhile
fprintf("No of iterations: %d \n",iterations);
fprintf("Root: %d \n",root);
plot([1:1:length(errors)],errors);




/* Input: 
   Enter first guess: 11
   Enter second guess: 100
   Enter max iterations: 100
   Enter tolerance: 1e-6  */
   
   
   
