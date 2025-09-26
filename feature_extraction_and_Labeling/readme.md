# Feature extraction
successfully identified the "bug-introducing" commits, which will serve as our labels (the 'Y' variable).Now, we need to calculate the 16 features for every commit that will be used to train the model (the 'X' variables).

This is a complex task, so we will approach it incrementally. We'll start by creating a script that iterates through all the commits in your repository and calculates the most straightforward features first.

## The Plan for Feature Extraction
- **Create a Foundation**: We will write a Python script (in notebook format) that iterates through each commit in the repository.
- **Calculate Easy Features First**: We will implement the logic for features that can be easily derived from a commit object, like code churn (lines added/deleted, files changed).
- **Outline Complex Features**: We will leave placeholders and provide guidance for the more complex features, such as developer experience and code coupling, which require more elaborate logic or external tools.

## Process
- [x] Create a Foundation python script 
- [x] Extract easy features first 
    - [x] Focus master branch 
- [x] Extract complex features 
    - [x] Experience matrics
    - [x] Code coupling
- [x] Labeling

> initial Feature extraction over [here](../SZZ/) ferther steps in feature extraction and labeling continue from here
## precomputation
To make speedup the preocess a precomputed [author_history](author_history_cache.pkl) is generated using [precomputation](precomputation.ipynb)
this contains script extract Auther history matrices
## Feature extraction Phase 2
phase 2 starts here gratually impement the feature extraction from basics to complex
the detaile doumentation available [here](../Docs/Feature%20extraction.md)

In the middle of Feature Exraction we need to utilize the open-source tool [code-maat](https://github.com/adamtornhill/code-maat).
Before processing the data, we need to perform data extraction using [code-maat](https://github.com/adamtornhill/code-maat)
1. Generate Git Log File
    - First, clone the repository.
    - Then, generate the git log file using Git Bash
    ```shell
    git log --pretty=format:'[%h] %aN %ad %s' --date=short --numstat --all > gitlog.log
    ```
2. Perform Code-Maat Coupling Analysis
    - Download the latest standalone JAR release.
    - Place the JAR in the repository location.
    - Run the tool with the following command
    ```shell
    java -jar code-maat-1.0.4-standalone.jar -l gitlog.log -c git -a coupling -o coupling.csv
    ```
This will give output as
- Entity - The first file in the coupled pair
- coupled - The second file that frequently changes with the first
- Degree - Percentage of commits where both files changed together
- Average-revs - Average number of revisions (commits) shared between the two entities

## Labeling
Using final_training_dataset.csv , szz_bug_introducing_commits.csv processed data Labeling performed [here](data_lableling.ipynb)

<table width="100%">
  <tr>
    <td align="left">
      <a href="../SZZ/readme.md"><img src="https://img.shields.io/badge/Previous-blue?style=for-the-badge"></a>
    </td>
    <td align="right">
      <a href="../statistical-model/readme.md"><img src="https://img.shields.io/badge/Next-green?style=for-the-badge"></a>
    </td>
  </tr>
</table>