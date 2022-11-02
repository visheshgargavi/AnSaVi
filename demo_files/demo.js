const prompt = require("prompt-sync")();
console.log("Welcome to AnSaVi Gaming: ");
let end              = "y";
let userScore     = 0;
let computerScore = 0;

while(end=="y") {
    var possible_action = ["rock", "paper", "scissor"];
    const userAction = prompt("Enter your choice \"rock\", \"Paper\" or \"Scissor\": ").toLowerCase();
    const computer_action = Math.floor(Math.random()*possible_action.length);
    const computerAction = possible_action[computer_action];
    Compare(computerAction,userAction);
    end = prompt("Would you like to continue.... If yes press 'y' else 'q'...");
}

function Compare(computerAction,userAction) {
    if (computerAction==userAction) {
        console.log("Both players selected"+ computerAction +". It's a tie!");
    }
    else if(userAction=="rock") {
        if(computerAction=="paper") {
            console.log("Paper caught Rock! You loss! ");
            computerScore+=1;
        }
        else {
            console.log("Rock smashes Scissor! You win😋!")
            userScore+=1;
        }
    }
    else if(userAction=="paper") {
        if (computerAction=="rock") {
            console.log("Paper caught Rock! You win😋! ")
            userScore+=1;
        } 
        else {
            console.log("Scissor have the better laugh sorry! You loss😢! ");
            computerScore+=1;
        }
    }    
    else if (userAction==="scissor") {
        if (computerAction==="rock") {
            console.log("Rock almosted killed Scissor! You loss😢!");
            computerScore+=1;
        }
        else {
            console.log("Scissor have torn the Paper! You win😋!");
            userScore+=1;
        }
    }

    console.log("Your Score : " + userScore + " \t\t\t Computer Score : " + computerScore);
}

console.log("We will miss you😢😢.... ");
console.log("Final score")
console.log("Your Score : " + userScore + " \t\t\t Computer Score : " + computerScore);