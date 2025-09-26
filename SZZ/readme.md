# SZZ Analysis
Finding the buggy code
The SZZ algorithm is a technique used in software engineering to identify the commits in a version control system that likely introduced bugs. It was introduced by Śliwerski, Zimmermann, and Zeller hence the name "SZZ."

### Here’s how it works in a nutshell:

- **Start with a bug-fixing commit** a change that resolves a known bug.
- **Trace back** through the version history to find the lines of code that were modified to fix the bug.
- **Identify the last commit** that touched those lines before the fix. That commit is flagged as a potential bug-introducing change

This method is widely used in empirical software engineering research, especially for tasks like defect prediction, software quality analysis, and training machine learning models to detect risky code changes

According to this research [article](https://www.scribd.com/document/866959848/SZZ-Unleashed)


## Feature extraction
successfully identified the "bug-introducing" commits, which will serve as our labels (the 'Y' variable).Now, we need to calculate the 16 features for every commit that will be used to train the model (the 'X' variables).

This is a complex task, so we will approach it incrementally. We'll start by creating a script that iterates through all the commits in your repository and calculates the most straightforward features first.

### The Plan for Feature Extraction
- **Create a Foundation**: We will write a Python script (in notebook format) that iterates through each commit in the repository.
- **Calculate Easy Features First**: We will implement the logic for features that can be easily derived from a commit object, like code churn (lines added/deleted, files changed).
- **Outline Complex Features**: We will leave placeholders and provide guidance for the more complex features, such as developer experience and code coupling, which require more elaborate logic or external tools.

### Process
- [x] Create a Foundation python script 
- [x] Extract easy features first 
    - [x] Focus master branch 
- [x] Extract complex features 
    - [x] Experience matrics
    - [x] Code coupling
- [x] Labeling

> initial Feature extraction over here ferther steps in feature extraction and labeling scripted [here](../feature_extraction_and_Labeling/)

<table width="100%">
  <tr>
    <td align="left">
      <a href="../keyword-linking/readme.md"><img src="https://img.shields.io/badge/Previous-blue?style=for-the-badge"></a>
    </td>
    <td align="right">
      <a href="../feature_extraction_and_Labeling/readme.md"><img src="https://img.shields.io/badge/Next-green?style=for-the-badge"></a>
    </td>
  </tr>
</table>