# Classification of Hematogons and Neoplastic B Lymphoblasts through Computational Analysis of Immunophenotypic Flow Cytometry Data

## Definitions
**Mature B Lymphocyte** - plays role in adaptive immunity , produced by hematopoietic stem cell (HSC) in the bone marrow

**Hematogone** - a normal immature B cell , undergoes lymphopoiesis to become a mature B lymphocyte

**Neoplastic B Lymphoblast** - an abnormal cell that originates from HSC that show an aberrant immunophenotype

**B cell acute lymphoblastic leukemia** ( B-ALL ) - a common childhood cancer that occurs due to neoplastic B lymphoblast proliferation

**Minimal Residual Disease** (MRD) - very small number of cancer cells ( in this case neoplastic B lymphoblast ) that remain in the body during or after treatment , an independent predictor for an increased risk of relapse in B-ALL
  
## The Problem
**Hematogons** (HGs) are immature B lineage cells that show similar immunophenotypic characteristics to **neoplastic B lymphoblasts**

**Hematogon overproduction** ( can be seen in children and those who receive chemotherapy ) could be misinterpreted as B-ALL or MRD

Differentiating between these two entities is crucial for accurate B-ALL monitoring , but it is often challenging and , in many cases , cannot be reliably achieved

## The Solution
Using supervised machine learning to figure out how to classify these cells

## What We Know
Aberrant antigen expression of neoplastic B lineage lymphoblasts:

	(i) over expression of CD10 , CD34
	(ii) under expression of CD38 , CD45
	(iii) over/under expression of CD22
	(iv) coexpression of CD20 , CD34
	(v) cross lineage antigen expression

HG demonstrate consistent and reproducible antigen expression patterns during their development:

	(i) Bright CD10 – ↓↓ as they mature
	(ii) Bright CD 38 – may ↓ as they mature
	(iii) Positive CD 34 – ↓↓ as they mature
	(iv) Dim CD 45 – ↓ as they mature
	(v) Negative CD20 – ↑ as they mature

Mature B cells are negative for CD34 , CD10 ; positive for CD20 , CD45 ; show variable patterns for CD38.

### Flow Cytometry Analysis of Hematogons and Neoplastic B Lymphoblasts
Credit : https://www.cytometry.org/web/q_view.php?id=4&filter=Interpretation%20and%20Clinical%20Application

<img width="602" alt="ICCS" src="https://github.com/user-attachments/assets/ccb099b8-3f1f-4226-91ba-db05a83ab701">

### Steps that hematogones go through until they become mature B lymphocytes
Credit : Chantepie, S., Cornet, E., Salaün, V., & Reman, O. (2013). Hematogones: An overview. Leukemia Research, 37(11), 1404–1411. https://doi.org/10.1016/j.leukres.2013.07.024

<img width="428" alt="Hematogon - overview" src="https://github.com/user-attachments/assets/0d24ef0e-3140-4a31-b7fd-e57c7533012b">

### Collaboration 

This project is funded by Scientific and Technological Research Council of Turkey (TÜBİTAK) 2209-A project support programme

	https://tubitak.gov.tr/en/scholarships/degree-associate-degree/scholarship-programs/2209-research-project-support-programme-undergraduate-students

<img width="200" alt="Screenshot 2024-07-30 at 15 46 32" src="https://github.com/user-attachments/assets/92b82614-9fd6-4cb3-8323-e0fe9ac200e6">

### References 
i. Chen, W., Karandikar, N., McKenna, R., & Kroft, S. (2007). Stability of Leukemia-Associated immunophenotypes in precursor B-Lymphoblastic Leukemia/Lymphoma: a single institution experience. American Journal of Clinical Pathology, 127(1), 39–46. https://doi.org/10.1309/g465-770l-0168-v35u

ii. Chantepie, S., Cornet, E., Salaün, V., & Reman, O. (2013). Hematogones: An overview. Leukemia Research, 37(11), 1404–1411. https://doi.org/10.1016/j.leukres.2013.07.024

iii. Eveillard, M., Floc’h, V., Robillard, N., Debord, C., Wuilleme, S., Garand, R., Rialland, F., Thomas, C., Peterlin, P., Guillaume, T., Moreau, P., Chevallier, P., & Bene, M. C. (2016). CD38 expression in B-Lineage acute lymphoblastic leukemia, a possible target for immunotherapy. Blood, 128(22), 5268. https://doi.org/10.1182/blood.v128.22.5268.5268

iv. Fuda, F., & Chen, W. (2018). Minimal/Measurable residual disease detection in acute leukemias by multiparameter flow cytometry. Current Hematologic Malignancy Reports, 13(6), 455–466. https://doi.org/10.1007/s11899-018-0479-1

v. Seegmiller, A. C., Kroft, S. H., Karandikar, N. J., & McKenna, R. W. (2009). Characterization of immunophenotypic aberrancies in 200 cases of B acute lymphoblastic leukemia. American Journal of Clinical Pathology, 132(6), 940–949. https://doi.org/10.1309/ajcp8g5rmtwuemuu

vi. McKenna, R. W., Washington, L. T., Aquino, D. B., Picker, L. J., & Kroft, S. H. (2001). Immunophenotypic analysis of hematogones (B-lymphocyte precursors) in 662 consecutive bone marrow specimens by 4-color flow cytometry. Blood, 98(8), 2498–2507. https://doi.org/10.1182/blood.v98.8.2498

vii. Shaver, A. C., Greig, B. W., Mosse, C. A., & Seegmiller, A. C. (2015). B-ALL Minimal Residual Disease Flow Cytometry. American Journal of Clinical Pathology, 143(5), 716–724. https://doi.org/10.1309/ajcpoojravun75gd
