# linking issues and PRs using keywords experiments
we have tried some pattern mapping to link PRs and Issues using regex

Initially we downloaded the PRs from the github using GitHub API as Jsons in mongoDB then we locate the PR and issue by matching the issue number , github link by analysing 
- Title
- Description 
- Comments 

and linking using Regex by mapping the keywords and retrieve the issue details from GitHub AI-powered risk assessment before merging code

And then use events api in Github to link issues AI-powered risk assessment before merging code

## TODO

- Key word mapping 
    - Title Completed [x]
    - Description (body) Completed [x]
    - Comments body  Not Started [ ]
- Timeline event 
    - Closed Blocked [o]
    - Referenced Completed [x]
    - Cross-referenced Not Started [ ]  

# final data preperation
some data cleaning performed [cleanig script](final_data_preperation.ipynb)


<table width="100%">
  <tr>
    <td align="left">
      <a href="../commit_id_issue_pr_lnking/readme.md"><img src="https://img.shields.io/badge/Previous-blue?style=for-the-badge"></a>
    </td>
    <td align="right">
      <a href="../SZZ/readme.md"><img src="https://img.shields.io/badge/Next-green?style=for-the-badge"></a>
    </td>
  </tr>
</table>