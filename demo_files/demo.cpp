#include<bits/stdc++.h>
using namespace std;
int main()
{
    cout<<"Welcome to AnSaVi Gaming"<<endl;
    char quit = 'y';
    int userScore = 0;
    int computerScore = 0;
    
    while(quit=='y' || quit=='Y') {
        string possibleChoice[3] = {"rock", "paper", "scissor"};
        string userAction;
        cout<<"Type your choice rock, paper or scissor ";
        cin>>userAction;
        int randomNumber = rand() % 3;
        string computerAction = possibleChoice[randomNumber];
        if (userAction==computerAction) {
            cout<<"Both players selected"<<possibleChoice[randomNumber]<<". It's a tie!"<<endl;
        }
        else if(userAction=="rock")
        {
            if(computerAction=="paper")
            {
                cout<<"Paper caught Rock! You loss! "<<endl;
                computerScore+=1;
            }
            else {
                cout<<"Rock smashes Scissor! You win😋!"<<endl;
                userScore+=1;
            }
            
        }
        else if (userAction=="paper")
        {
            if(computerAction=="rock") {
                cout<<"Paper caught Rock! You win😋! "<<endl;
                userScore+=1;
            }
            else {
                cout<<"Scissor have the better laugh sorry! You loss😢! "<<endl;
                computerScore+=1;
            }
        }
        
        else if (userAction=="scissor") {
            if (computerAction=="Rock") {
                cout<<"Rock almosted killed Scissor! You loss😢!"<<endl;
                computerScore+=1;
            }
            else {
                cout<<"Scissor have torn the Paper! You win😋!"<<endl;
                userScore+=1;
            }
            
        }
        cout<<"Your Score : "<<userScore<<"\t\t\t Computer Score : "<<computerScore<<endl;
    
        cout<<"Would you like to continue.... If yes press 'y' else 'q'..."<<endl;
        cin>>quit;
    }
    
    cout<<"We will miss you😢😢.... "<<endl;
    cout<<"Final score"<<endl;
    cout<<"Your Score : "<<userScore<<"\t\t\t Computer Score : "<<computerScore<<endl;
}