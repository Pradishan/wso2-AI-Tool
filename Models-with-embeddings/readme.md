# Models with Embeddings

## Phase 1
In this section initaly some experiment attempted to get gode embeddings using codeBERT model in loacl system it failse many times due to the lack of memory and computational power the relevent code are available on [Tokenization and Embeddings](Tokenization%20and%20Embeddings/) folder.

Ultimatelly embedding performed in google colab patform using final_dataset_with_full_diffs_CLEANED.csv datast 
the script is [codeembeddings.ipynb](codeembeddings.ipynb)

## Phase 2
As the next step trained the [XGBoost](XGboost.ipynb) model with initial version of code embeddings and using Transfer learning approach fintued a the [CodeBERT](codeBERT.ipynb) model as well but due to miss handling of the large code diffs returned multiple null values this makes model to performe worst.

## phase 3
After introdusing slideing window and pooling mechanism re trained the baseline [XGBoost](XGboost.ipynb) model. The model performance was not good enaugh.

## Phase 4
Based on an Hypothisis
> toomuch of featurs (High demention vector representation 768 *codeBERT*) may effect the model performance.

we started a dimensionality reduction approach to accoplish this we did PAC and UMAP analysis.
- [PCA Analysis](PCA.ipynb)
- [UMAP Analysis](UMAP.ipynb)
- [PCA perfromance test on chronological split data](PCA.ipynb)

> baseline XGBoost model perfomed decently after the PCA on random splite but performed wost on chronological split 

## Phase 5

After the PCA we Choose 2 Models
1. XGBoost - [XGBoost experiments](XGboost%20experiment.ipynb)
2. MLP - [ANN experiments](ANN%20experiment.ipynb)

then fror each model we perform 5 experiments
1. Statistical Features Only
2. Embeddings Only
3. PCA-Reduced Embeddings Only
4. Stats + Full Embeddings
5. Stats + PCA-Reduced Embeddings

> ⚠️ these experiments done usig only 10% dataset due to some GPU limitation in Embedding

## TODO
- [ ] Get Embedding for all data.
- [ ] train on full data set.
- [ ] test the embeding perfromnce with Attention based pooling meachanizm if mean pooling perfome worst.
- [ ] Tune the architecture and hyper parameter of ANN using this [script](ANN%20tuning.ipynb).
- [ ] give a try to fine tune the codeBERT model with tuned top ANN layers.

<table width="100%">
  <tr>
    <td align="left">
      <a href="../statistical-model/readme.md"><img src="https://img.shields.io/badge/Previous-blue?style=for-the-badge"></a>
    </td>

  </tr>
</table>