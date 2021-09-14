%simple word guessing game
function[]=word_guess(m)
fprintf("<strong>welcome to word guess\n</strong>");
%vector A which contains all the names of the planets
A = ["mercury","venus","earth","mars","jupiter","saturn","uranus","neptune"];
%words in random order from index 1 to 8
m=A(randi(8));
%convert string to character array
random_word =convertStringsToChars(m);
fprintf("'%s'\n",random_word)
%initialisation of count
count=0;
%length of random word
l_word=strlength(random_word);
fprintf("<strong>hint:hi!!the word is the name of planet..it has %d letters</strong>\n",l_word);
fprintf("<strong>condition:if there are two letters of the same type you have to guess them twice</strong>\n");
while true
    %if all the letters are guessed
    if (length(random_word)==0)
        fprintf("the word you guessed is <strong>%s</strong>\n",m);
        fprintf("the number of <strong>guesses</strong> you took is <strong>%d</strong>\n",count);
        break;
    end
    %condition to check if each and every letter entered by the user
    %matches with the  given random word
    for j=1:length(random_word)
        guess=input('enter a letter:','s');
        %conition if length of the letter entered is mre than 1
        if(length(guess)>1)
            fprintf("please enter a letter\n")
        end
        count=count+1;
        if(random_word(j)==guess)
            random_word(j)=[];
        end
        break;
    end
end
% depending on the number of guesses points and badges of appreciation are
% given.
%if condition for different number of guesses
if(count<=7)
    fprintf("<strong>congrats!!you have won the golden badge(100points)</strong>\n");
elseif(count>7 && count<14)
    fprintf("<strong>congrats!!you have won the silver badge(75points)</strong>\n");
elseif(count>14)
    fprintf("<strong>congrats!!you have won the bronze badge(50points)</strong>\n");
end
fprintf("enter <strong>1</strong> to play this game again..enter <strong>2</strong> to play another game ..enter <strong>3</strong> to exit ")
%game choice - input statement where the user has to enter 1,2,3
game_choice= input("type your choice here ");
switch game_choice
    %if the user want to play the same game
    case 1
        word_guess()
        %if the user wants to play a different game
    case 2
        gameplayagain();
    case 3
        %if the user wants to quit
        quit();
end


