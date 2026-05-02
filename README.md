# 📧 Spam Classifier using Naive Bayes

A machine learning project that classifies SMS/email messages as **spam** or **ham (legitimate)** using the Multinomial Naive Bayes algorithm with NLP preprocessing techniques.

---

## 📌 Problem Statement

The dataset used is the **SMS Spam Collection** — a set of 5,574 SMS messages in English, each labeled as either `ham` (legitimate) or `spam`. The goal is to build a classifier that can accurately detect spam messages based on their text content.

---

## 🗂️ Project Structure

```
├── Project_6_-_Spam_Classifier_using_Naive_Bayes.ipynb
├── emails.csv
└── README.md
```

---

## 🔄 Workflow

### Step 0 — Import Libraries
- `pandas`, `numpy`, `matplotlib`, `seaborn`, `nltk`, `scikit-learn`

### Step 1 — Load Dataset
- Loaded from `emails.csv` with columns: `text` (message) and `spam` (label: 0 = ham, 1 = spam)

### Step 2 — Exploratory Data Analysis
- Visualized message length distributions for spam vs. ham
- Analysed class balance (spam % vs ham %)
- Plotted count distribution using Seaborn

### Step 3 — Data Cleaning & Preprocessing
1. **Remove Punctuation** — stripped all punctuation characters
2. **Remove Stopwords** — filtered common English words using NLTK
3. **Count Vectorization** — converted text into a bag-of-words matrix using `CountVectorizer`

### Step 4 — Model Training
- **Algorithm:** Multinomial Naive Bayes (`MultinomialNB`)
- Split data: **80% training / 20% testing**
- Trained on vectorized message tokens

### Step 5 — Model Evaluation
- Evaluated using **Confusion Matrix** (visualized as heatmap)
- Reported **Precision, Recall, F1-Score** via `classification_report`

### Step 6 — TF-IDF Enhancement
- Applied **TF-IDF (Term Frequency–Inverse Document Frequency)** weighting on top of Count Vectorization to improve feature quality
- Retrained the Naive Bayes classifier on TF-IDF features

---

## 🛠️ Technologies Used

| Tool | Purpose |
|------|---------|
| Python | Core programming language |
| pandas & numpy | Data manipulation |
| matplotlib & seaborn | Data visualization |
| NLTK | Natural language preprocessing |
| scikit-learn | ML model, vectorization, evaluation |
| Jupyter Notebook | Development environment |

---

## 🚀 Getting Started

### Prerequisites

```bash
pip install pandas numpy matplotlib seaborn scikit-learn nltk
```

### Run the Notebook

```bash
jupyter notebook "Project_6_-_Spam_Classifier_using_Naive_Bayes.ipynb"
```

Make sure `emails.csv` is in the same directory as the notebook.

---

## 📊 Key Concepts

- **Naive Bayes** — A probabilistic classifier based on Bayes' theorem, highly effective for text classification tasks
- **Bag of Words** — Represents text as word frequency counts, ignoring grammar and order
- **TF-IDF** — Weights words by how unique they are across documents, reducing the influence of common but uninformative words

---

## 👤 Author

Stanley  
ML Specialization | DeepLearning.AI  
[GitHub Profile](https://github.com/YOUR_USERNAME)
