# Continuous Integration (CI) resources for US-RSE'25 computational notebooks submissions

This repository contains instructions, GitHub Actions workflows, and accessory scripts to help authors tests their submissions for the Computational Notebooks track at the [US-RSE'25 conference](https://USRSE.github.io/usrse25).

## In a nutshell

- We have developed an **automated workflow** to test that a repository satisfies the **requirements for submission to the US-RSE'25 notebooks track**, and that the **notebook can be run in the same standardized, self-contained environment** that will be used during the review process
- Authors **can, but are not required to, enable this workflow** to validate their repository at any stage, including while developing their notebook and/or before finalizing their submission
- To enable the workflow and start testing your repository, refer to the [Getting Started guide](docs/getting-started.md) in this repository

## A few key questions

### What is Continuous Integration?

- Broadly speaking, Continuous Integration (CI) is a software engineering practice that helps **ensure code works as expected outside of a developer's local environment**
- Typically, CI consists in a **set of checks configured to run automatically whenever code in a repository is updated** (e.g. when new commits are pushed to a branch, a Pull Request (PR) is opened, etc.)
- **If any of the checks fail, the developer is alerted**, giving them the possibility to **fix the issues in the code before it makes its way to its intended destination** (e.g. distributed to users, deployed to a production environment, etc)

### What is GitHub Actions?

- GitHub Actions (GHA) is the name of GitHub's built-in tool to run automated workflows, typically (but not only) used to run CI workflows on code hosted on GitHub repositories
- GHA is available **free of charge** for all GitHub public repositories

### Why is CI needed for notebooks at the US-RSE conference?

- One of the biggest challenges with computational notebooks is **ensuring that a notebook can be run** by people other than its author(s), on computation environments, and/or at different times in the future after its creation, an ability sometimes known as _computational reproducibility_
- While this is a general issue affecting any context where notebooks (or indeed, any computational artifact) are used, these concerns also apply concretely to the **computational notebooks submission track** at the US-RSE conference:
  - If **reviewers** are not able to run notebooks for the submissions they're reviewing, they'll likely be **unable to evaluate the submission** based on its full intended functionality; or, they might try to fix the issues preventing the notebook from being run (missing dependencies, incompatible versions, etc), which results in extra work, frustration, and/or less consistency across multiple reviewers
  - Even if **authors** try their best to **provide resources for reproducing a valid computational environment** in which their submission can be run (such as documentation, packaging/environment metadata, etc), the **lack of an automated way to test and a documented standard for the computational environment** that will be used limits their ability to validate their resources (and, therefore, estimating how likely it is that their notebooks will run as expected during review) before finalizing their submission
- By providing **a set of automated checks that can run on the repository before submission**, based on the **same standardized tools, specifications, and computational environment available to reviewers**, the CI workflow addresses both of these issues, giving authors the possibility to **focus their efforts toward a concrete goal for computational reproducibility** for their US-RSE notebooks submission, hopefully only requiring a reasonable amount of extra effort

### I'm interested in submitting a notebook to US-RSE'25, but I'm not sure about this CI thing. Am I still able to submit without it?

- In one sentence: **absolutely, yes!** Using this CI workflow **is not a requirement for submission** for US-RSE'25
- **Using this CI workflow is completely optional**. Authors who choose not to enable it for their repository for any reason will not be penalized in any way, as long as their repository satisfies the mandatory requirements described in the submission instructions

### What do I have to do to enable the US-RSE notebooks CI workflow for my GitHub repository?

Refer to the [Getting Started](docs/getting-started.md) section of the [documentation](docs/) in this repository.

## Next steps

If you're interested to know more about the US-RSE'25 notebooks submissions:

- Join the `#usrse25` channel on the US-RSE Slack workspace to receive general news about the conference, as well as updates specific to the notebooks CI resources hosted in this repository
- Star this repository to receive notifications about new versions, functionality being added, etc

If you have any questions, please email usrse2025@easychair.org.
