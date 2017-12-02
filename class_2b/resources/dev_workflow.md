# Dev Workflow

* Understanding a basic development process is crucial to effectively managing developers.

* Here's an example of our dev workflow at Airbo:

## Airbo Git Workflow

1. Create a feature branch off of development. The branch should be prefixed with an issue number of the first issue you are working on in the branch. Ex: git checkout -b 111_example_feature_branch

2. Push your feature branch to GitHub and create a pull request. This will trigger Semaphore and CodeClimate to run checks as you develop and let the team know what you are working on. Prefix the name of the pull request with 'WIP' while your are still working on the branch (work in progress).

3. Push to GitHub as you develop in order to continue running checks. If you are working on a branch for an extended period of time, periodically pull development and rebase developmet onto your feature branch. Ex: git rebase development 111_example_feature_branch

4. When development is complete, rebase developmet onto your feature branch and squash commits to a single commit with a commit message that details the issues that will be closed. Remove 'WIP' from the pull request name. When pushing to GitHub after you squash your commits, you will have to force push.

``` sh
git rebase development 111_example_feature_branch
git rebase -i development 111_example_feature_branch
git push origin 111_example_feature_branch -f
```

5. Before merging your pull request:

* Make sure Semaphore passes
* Make sure all the CodeClimate checks pass
* Ask for code review on your pull request if needed
* Deploy to Staging and QA

6. Merge pull requests from the GitHub GUI and delete your feature banch in the same GUI after merging.
