# AI-powered PR risk assessment before merging code ( predict the risk of a future bug)
> internship project

This repository focuses on developing an AI-powered risk assessment tool for code changes before they are merged. The goal is to provide developers with a "risk score" for each pull request (PR) to identify potential bug-introducing changes.

## Key aspects include

  * **Problem:** AI-powered risk assessment before merging code to provide a risk score for each PR.
  * **Methodology:** Utilizing support data, PRs for bug fixes, and blame analysis to identify PRs that may have caused issues.
  * **Data Collection:** Gathering resolved issues from GitHub repositories (e.g., [ballerina-platform/ballerina-lang](https://github.com/ballerina-platform/ballerina-lang/issues)) and linking them to PRs using keyword matching and timeline events. The SZZ algorithm is used to identify bug-introducing commits.
    1. [Data downloading](data%20downloader/) --->[📄read..](data%20downloader/readme.md)
    2. [EDA](EDA/) --->[📄read..](EDA/readme.md)
    3. [Issues PRs linking experiment](commit_id_issue_pr_lnking/) --->[📄read..](commit_id_issue_pr_lnking/readme.md)
    4. [Issues PRs linking using **Keywords**](keyword-linking/) --->[📄read..](keyword-linking/readme.md)
    5. [SZZ Analysis](SZZ/) --->[📄read..](SZZ/readme.md)
  * **Feature Extraction:** Calculating 16 features for each commit, including lines of code added/deleted, files churned, and entropy.

    1. [Feature extraction and labelig](feature_extraction_and_Labeling/) --->[📄read..](feature_extraction_and_Labeling/readme.md)
  * **Model Building:** Training models like Random Forest and XGBoost with statistical features and CodeBERT embeddings to forecast the cost/risk associated with a PR.

    1. [Statistical feature based models](statistical-model/) --->[📄read..](statistical-model/readme.md)
    1. [Models with code Embeddings](Models-with-embeddings/) --->[📄read..](Models-with-embeddings/readme.md)

  * **Research Log:** Details the process of data collection, cleanup, embedding generation, and forecasting, including models tried and their performance.
    1. [Read about all the process in detail here](Docs/)

The project aims to improve code quality by proactively identifying high-risk PRs, which can then undergo more rigorous code reviews.

## Project folder structure
```
├───backup
├───commit_id_issue_pr_lnking
│   ├───issue-pr
│   └───pr-issue
├───data
├───data downloader
├───Docs
├───EDA
├───feature_extraction_and_Labeling
├───keyword-linking
├───mlruns
├───Models-with-embeddings
│   └───Tokenization and Embeddings
├───logs
├───restore
├───src
│   ├───__init__.py
│   └───utils.py
├───statistical-model
├───SZZ
├───.env 
├───.env.sample
├───.gitignore
├───docker-composer.yml
├───LICENCE
├───README.md
└───requirements.txt
```
<table width="100%">
  <tr>
    <td align="left">
      <a href="./data downloader/readme.md"><img src="https://img.shields.io/badge/Research log-red?style=for-the-badge"></a>
    </td>
    <td align="right">
      <a href="data downloader/readme.md"><img src="https://img.shields.io/badge/Next-green?style=for-the-badge"></a>
    </td>
  </tr>
</table>

