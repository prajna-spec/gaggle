%menu
fprintf("<strong>Welcome! to gaggle.This is game is made for all the little ones out there.Have fun\n</strong>");
fprintf("enter a number of ur choice between 1 and 4 to play a game\n")
fprintf("MENU\n");
fprintf("------------------------------------------------------------------\n")
fprintf("1:guess prime\n");
fprintf("2:trivia_quiz\n");
fprintf("3: word guess game\n");
fprintf("4: random game\n");
fprintf("5:quit")
fprintf("------------------------------------------------------------------\n")
%input statement so that the user can enter his or her choice.
game_number=input("please enter the number of the game you want to play");
 %condition so that the game choice should be between 1 and 6. 
while (game_number<1||game_number>6)
 fprintf("it is invalid\n");
 %input statement
 game_number=input("please enter a number between 1 and 6");
end
clc();
switch game_number
    case 1
        isprime();
    case 2
        triviaquiz(1)
    case 3
        word_guess(1);
    case 4
        random_guess(1);
end


    
        
    
   
   
    


    
