%function definition
function[]=random_guess()
fprintf("<strong>Welcome!You have entered the guessing game\n</strong>");
%random numbers between 1 and 100
target_number=randi(100)
%the user will have 5 lives to answer the guess number correctly
flag_lives=5;
%input
guess_number=input("Enter any number between 1 and 100: ");
% condition to test the user number and guess number 
while(target_number~=guess_number && flag_lives>0)
    fprintf("you have only 5 lives!!..try to guess the target_number\n");
    fprintf("hint:your guess might be higher or lower than the given number\n");
    guess_number=input("please guess another number between 1 and 100 : ");
    %count for flag lives
    flag_lives=flag_lives-1;
end
if(target_number==guess_number)
    fprintf("congrats..you guessed it right\n");
end
fprintf("enter 1 to play this game again..enter 2 to play another game ..enter 3 exit\n");
%game choice - input statement where the user has to enter 1,2,3
game_choice= input("type your choice here ");
switch game_choice
    case 1
        random_guess(1);
    case 2
        playagain();
    case 3
        quit();
end
end