%prime number
%guess wether the the given number is prime or not
function[]=isprime()
number= round(rand()*500.35)+1;  % the plus 1 stops the result being in the range  0..5 
fprintf("guess whether %d is a prime number or not\n",number);
for k=(2:ceil(sqrt(number)))
   if(mod(number,k)==0)
        composite = number;
    end
end
A=["Y","N"];
your_number=input("enter wether the given number is prime or not(Y/N):","s");
if(number==composite && your_number==A(2)||number~=composite && your_number==A(1))
    fprintf("congrats!!your answer is right\n");
elseif(number==composite && your_number==A(1)||number~= composite && your_number==A(2))
    fprintf("sorry you lost the game..its a composite number\n");

end

fprintf("enter 1 to play this game again..enter 2 to play another game ..enter 3 exit ")
game_choice= input("type your choice here ");
switch game_choice
    case 1
        isprime()
    case 2
        playagain();
    case 3
        quit();
end
end
