%trivia game
%you'll be given 5 questions and the right answer to each question will
%fetch u 5 stars.so ur score is  out of 25 stars
function[]=triviaquiz(trivia_start)
trivia_start=1;
fprintf("<strong>Welcome to trivia quiz game!\n</strong>");
A=["cheetah","jupiter","greece","decagon"];
fprintf("Q1:What is the fastest land animal??\n")
answer=A(1);
q1_answer=input("enter your answer:","s");
if(q1_answer==A(1))
    fprintf("<strong>wow! you get 5 stars</strong>\n");
    points=5;
elseif(q1_answer~=A(1))
   fprintf("<strong>You lost!The correct answer is cheetah!</strong>\n");
    points=0;
end
fprintf("Q2:what is the largest planet in the solar system\n")
answer_2=A(2);
q2_answer=input("enter your answer ","s");
if(q2_answer==A(2))
  fprintf("<strong>wow you get 5 stars</strong>\n");
  points_2=5;
elseif(q2_answer~=A(2))
    fprintf("<strong>You lost!The correct answer is jupiter</strong>!\n");
    points_2=0;
end
fprintf("Where did the Olympic games originate?\n");
  answer_3=A(3);
  q3_answer=input("enter your answer ","s");
  if(q3_answer==A(3))
   fprintf("<strong>wow!!you get 5 stars\n</strong>");
   points_3=5;
   elseif(q3_answer~=A(3))
  fprintf("<strong>You lost!!The correct answer is bgreece</strong>!\n");
  points_3=0;
  end
  fprintf("What is the name of the shape with 10 sides\n ")
  answer_4=A(4);
  q4_answer=input("enter your answer ","s");
  if(q4_answer==A(4))
   fprintf("<strong>wow!!you get 5 stars</strong>\n");
   points_4=5;
  elseif(q4_answer~=A(4))
  fprintf("<strong>You lost!!The correct answer is decagon</strong>!\n");
  points_4=0;
  end
  total_score=points+points_2+points_3+points_4;
  if(total_score==20)
      fprintf("your total score is 20\n");
      fprintf("<strong>kudos!Rightly answered..you won a golden badge</strong>\n")
  elseif(total_score==15)
      fprintf("your total score is 15\n")
      fprintf("<strong>kudos!..you have 3 out of 4 questions rightly..you won a silver badge</strong>\n")
  elseif(total_score<=10&&total_score>=5)
      fprintf("<strong>kudos!..you won a bronze badge</strong>");
  end
  fprintf("enter 1 to play this game again..enter 2 to play another game ..enter 3 exit ")
game_choice= input("type your choice here ");
switch game_choice
    case 1
        triviaquiz()
    case 2
       playagain();
    case 3
      quit();
end
end
    
