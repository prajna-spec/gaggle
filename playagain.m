function[]=playagain()
fprintf("<strong>Welcome! to gaggle.This is game is made for all the little ones out there.Have fun!</strong>\n");
fprintf("enter a number of ur choice between 1 and 4 to play a game\n")
fprintf("MENU\n");
fprintf("------------------------------------------------------------------\n")
fprintf("1:guess prime\n");
fprintf("2:factorial game\n");
fprintf("3: vowel game\n");
fprintf("4: random game\n");
fprintf("5: word guess game\n");
fprintf("6:quit")
fprintf("------------------------------------------------------------------\n")
number=input("please enter the number of the game you want to play");
while (number<1||number>6)
    fprintf("it is invalid\n");
    number=input("please enter a valid number");
end
if(number==1)
    isprime();
elseif(number==2)
   triviaquiz();
elseif(number==3)
    wordguess();
elseif(number==4)
 random_guess();
elseif(number==5)
    
end
end
