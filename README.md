# "Rock-Paper-Scissors"

> This project is a basic game which we play in day to day life with friends, so here "AnSaVi" Team came up with an idea of creating a game which you can play with computer and we are using terraform to automate our infrastructure as a code which will help us in deploying online server quite effectively.

> This is a single-player game, in which once you have made your choice, you could see whether you win, lose or the match ends in a draw
based on what the computer(depicting the opponent) has chosen. The score-board keeps account of how many games you have won and lost.


## Technologies Used
> Terraform

> html, css and js


# Terraform
Terraform is an IAC tool, used primarily by DevOps teams to automate various infrastructure tasks. The provisioning of cloud resources, for instance, is one of the main use cases of Terraform. It's a cloud-agnostic, open-source provisioning tool written in the Go language and created by HashiCorp
```hcl
> cd ./terraform

> terraform init

> terraform plan

> terraform apply --auto-approve

> terraform destroy --auto-approve
```

## Game Rules:-
It's a pretty simple hand game usually played between two players.

Rock beats scissors, scissors beats paper and paper beats rock.

If both players choose the same thing, it results in a draw. 
