This repo steps thru a process to cerate a development environment using copilot as a team member. COPILOT NOT PILOT.

The challenges teams face is the time warp between gathering requirements and engaing the compsite teams: backend dev , frontend dev, secutity, CI/CD, testing, documentation and respective infrastructures for dev, staging, prod.

The requirements change over iterations and exaserbate this timeline. Many times the teams are blocked/paused waiting for the infrastructure to be created. Then when needed changes occur, there is an additional time warp.

The available resources and tools have improved over the past 10-15 years to help drive solutions and related time to market (evalutating succress or failure). "Fail Fast" is a tag line in the minds of all successful teams and businesses. Does it work? Is the sample data used representive of our scenario? How do we quickly turn (iterate) on changes in requirements or newer tools which can be utilized to improve the teams productivity, to improve the solution for the client audience, reduce cost, reduce time to market. POCs and MVPs are used in most cases to flesh out the many risks/issues, evaluate viability, understand new technology or processes before they are then confidently moved into production solutions.

CoMPOSITE TEAMS: As we build teams, we typically have a senior skill set (architect) and junior team members as a composit team. Over varius concurrent engagements and supporting production issues, senior team members mentor junior team members. In a perfect world these teams exist in full synchronous harmony. The reality is they are fractured and senior members do not exist or are a shared resource; main projects are sourced and others are starved due to constrained senior resources.

COSTLY TIME WARP: Ten to fifteen yeaars ago we built servers up from hardware with lengthy specs, quotes, and purchaing cycles. We then integrated them into a separate networks for the purpose of Dev/Test, Staging, and Production. Versioning was a challenge in Dev and rolling out and rolling back client facing soluutions. There was/is an inherent cost penalty for equipment and build up. Often the infrastructure is obsolete by the time success/failure is determined and in determining the value of the solution delivered.

ENTER COPILOT TEAM MEMBER and IaC:
The repo is intended to help others use existing tools and infrastructure resources. We will compliment the team with Copilot(s): compliment the team or often times only individual developer or database/dev administrator to devlop POCs and MVPs.

The IaC/Github provides the review and test prior to tagging the IaC as secure and production ready. Point and Click setup is minimized and workflow and documentation is embedded in the Code and step wise naming converntion. The SQL DDL is kept simple and can be correlated to evaluate the resulting DDL from the Copilot team member.

VSCODE and SSMS are used as the IDEs for demonstartions. GitHub is used as a respository for code and versioning. Codespaces are used. Local and remote cloud resources are included.

The sample database developed  "Customers, Produts, Orders, OrderDeatil, ShipTioAddresses) is kept simple on purpose to undersatnd and demonstarte the Copiot Prompting iterations. We will develop a database and then move it to a cloud resource for development, locked down public access other than for specific public IPs.