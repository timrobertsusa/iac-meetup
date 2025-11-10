Welcome

This repo steps thru a process to create a development environment using copilot as a team member. Copilot not Pilot.

The challenges teams face is the time delay between gathering requirements and engaging the composite teams: backend dev, frontend dev, security, CI/CD, testing, documentation and respective infrastructures for dev, staging, prod.

The requirements change over iterations and exacerbate this timeline. Many times, the teams are blocked/paused waiting for the infrastructure to be created. Then when needed changes occur, there is an additional time delay.

The available resources and tools have improved over the past 10-15 years to help drive solutions and related time to market (evaluating success or failure). "Fail Fast" is a tag line in the minds of all successful teams and businesses. Does it work? Does the sample data used represent our scenario? How do we quickly turn (iterate) on changes in requirements or newer tools which can be utilized to improve the teams’ productivity, to improve the solution for the client audience, reduce cost, reduce time to market? 

POCs and MVPs are used in most cases to flesh out the many risks/issues, evaluate viability, understand new technology or processes before they are then confidently moved into production solutions.

COMPOSITE TEAMS: As we build teams, we typically have a senior skill set (architect) and junior team members as a composite team. Over various concurrent engagements and supporting production issues, senior team members mentor junior team members. In a perfect world these teams exist in full synchronous harmony. The reality is they are fractured and senior members do not exist or are a shared resource; main projects are sourced and others are starved due to constrained senior resources.

COSTLY TIME DELAYS: Ten to fifteen years ago we built servers up from hardware with lengthy specs, quotes, and purchasing cycles. We then integrated them into a separate network for the purpose of Dev/Test, Staging, and Production. Versioning and repeatablity were challenges as well as rolling out and rolling back client facing solutions. There was/is an inherent cost penalty for equipment and build out. Often the infrastructure is obsolete by the time success/failure is even determined making the solutions qustionable or even repeatable.

Enter VMs and images. Enter Docker, images, container registries, and containers. Enter cloud infrastructures.

ENTER COPILOT TEAM MEMBER and IaC: The repo is intended to help others use existing tools and infrastructure resources. When often times only an individual developer or database/dev administrator is awailable to develop POCs and MVPs and additional technical knowledge is needed, We will complement the team with Copilot(s).

CODE vs UI-Point&Click:
Point and click with lengthy instructions and screenshots don't often convey all that is required. Documentation often lags new changes implemented. We have often found that UI does not offer or is able to implement the functionality required. CODE uses APIs which are up to date. APIs are updated before UI implementations. This allows us to take advantage of newly devloped functionality, options, and fixes.

The "IaC/Github approach" provides the review and test steps prior to tagging the IaC as repeatble, secure, tested, and production ready. Point and Click setup is minimized and workflow and documentation is embedded in the Code and step wise naming convention. The resuting SQL DDL from the Copilot team member is intended to be simple/understandable and provides an iterative "Prompting" illustration to acieve intended/correct DDL results. Give it a try.

VSCODE and SSMS are used as the IDEs for demonstrations. GitHub is used as a repository for code and versioning. Codespaces are used. Local and remote cloud resources are included.

The sample database developed "Customers, Products, Orders, OrderDetail, ShipTioAddresses) is kept simple on purpose to understand and demonstrate the Copilot Prompting iterations. We will develop a database and then move it to a cloud resource for development, including locked down public access other than for specific public IPs.

The Hub & Spoke diagram (repo referenced) illustrates a more complex infrastructure. It became the reference architexture we (as well as others) have adopted. For the most part, we have attempted to illustrate the approach, steps learned and adopted in Hub&Spoke, naming conventions, and tools here.

We hope others can make use of the learnings and approach within this repo and demo, engaging Copilot as your team member and familiarizing yourself with the tools and technology now available. Comments and suggestions welcome.
