import random


print("Welcome to AnSaVi Gaming")
end            = "y"
user_score     = 0
computer_score = 0
while end=='y' or end=='Y':
    possible_action    = ["Rock", "Paper", "Scissor"]
    user_action        = str(input('Enter your choice "Rock", "Paper" or "Scissor" '))
    computer_action    = random.choice(possible_action)
    if user_action.title() == computer_action:
        print(f"Both players selected {user_action}. It's a tie!")
    elif user_action.title()=="Rock":
        if computer_action=="Paper":
            print("Paper caught Rock! You loss! ")
            computer_score+=1
        else:
            print("Rock smashes Scissor! You win😋!")
            user_score+=1
    elif user_action.title()=="Paper":
        if computer_action=="Rock":
            print("Paper caught Rock! You win😋! ")
            user_score+=1
        else:
            print("Scissor have the better laugh sorry! You loss😢! ")
            computer_score+=1
    elif user_action.title()=="Scissor":
        if computer_action=="Rock":
            print("Rock almosted killed Scissor! You loss😢!")
            computer_score+=1
        else:
            print("Scissor have torn the Paper! You win😋!")
            user_score+=1

    print("Your Score : {} \t\t\t Computer Score : {}".format(user_score,computer_score))
    
    print("Would you like to continue.... If yes press 'y' else 'q'...")
    end = input()

print("We will miss you😢😢.... ")
print("Final score")
print("Your Score : {} \t\t\t Computer Score : {}".format(user_score,computer_score))