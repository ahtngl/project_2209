# Classification of Hematogons and Neoplastic B Lymphoblasts through Computational Analysis of Immunophenotypic Data

## Definitions
**Mature B Lymphocte** - plays role in adaptive immunity , produced in bone marrow

**Hematogone** - what a cell that originates from hematopoietic stem cell (HSC) is called until it becomes a mature B lymphocyte , overproduction can be seen in children that is known as **hematogone hyperplasia** , also known as B lymphoblast

**Neoplastic B Lymphoblast** - an abnormal cell that originates from HSC that show aberrant immunophenotypic characteristic

**B cell acute lymphoblastic leukemia** ( B-ALL ) - a common childhood cancer that occurs due to neoplastic B lymphoblast proliferation
  
## The Problem
**Hematogons** (HGs) are immature B lineage cells that show similar immunophenotypic characteristics to neoplastic B lymphoblasts

Therefore , **hematogon overproduction** ( can be seen in children and after chemotherapy ) could be misinterpreted as B-ALL or minimal residual disease

Differentiating these two entities is essential for accurate B-ALL monitoring but often cannot be done 

## The Solution
Using machine learning - most likely logistic regression - to figure out how to classify these cells

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

Machine learning model will be trained by the data obtained from Yeditepe University Stem Cell Laboratory § Flow Cytometry Facility

	https://yeditepehastaneleri.com/en/services/immunology

<img width="200" alt="Screenshot 2024-07-30 at 15 46 32" src="https://github.com/user-attachments/assets/92b82614-9fd6-4cb3-8323-e0fe9ac200e6">
<img width="500" alt="Screenshot 2024-07-30 at 15 43 16" src="https://github.com/user-attachments/assets/1e6dc9a2-43c3-4f5b-bf78-5578ca402ddc">

### Supervisors

### References 
Chen, W., Karandikar, N., McKenna, R., & Kroft, S. (2007). Stability of Leukemia-Associated immunophenotypes in precursor B-Lymphoblastic Leukemia/Lymphoma: a single institution experience. American Journal of Clinical Pathology, 127(1), 39–46. https://doi.org/10.1309/g465-770l-0168-v35u

Chantepie, S., Cornet, E., Salaün, V., & Reman, O. (2013). Hematogones: An overview. Leukemia Research, 37(11), 1404–1411. https://doi.org/10.1016/j.leukres.2013.07.024

Eveillard, M., Floc’h, V., Robillard, N., Debord, C., Wuilleme, S., Garand, R., Rialland, F., Thomas, C., Peterlin, P., Guillaume, T., Moreau, P., Chevallier, P., & Bene, M. C. (2016). CD38 expression in B-Lineage acute lymphoblastic leukemia, a possible target for immunotherapy. Blood, 128(22), 5268. https://doi.org/10.1182/blood.v128.22.5268.5268

Seegmiller, A. C., Kroft, S. H., Karandikar, N. J., & McKenna, R. W. (2009). Characterization of immunophenotypic aberrancies in 200 cases of B acute lymphoblastic leukemia. American Journal of Clinical Pathology, 132(6), 940–949. https://doi.org/10.1309/ajcp8g5rmtwuemuu

McKenna, R. W., Washington, L. T., Aquino, D. B., Picker, L. J., & Kroft, S. H. (2001). Immunophenotypic analysis of hematogones (B-lymphocyte precursors) in 662 consecutive bone marrow specimens by 4-color flow cytometry. Blood, 98(8), 2498–2507. https://doi.org/10.1182/blood.v98.8.2498

Shaver, A. C., Greig, B. W., Mosse, C. A., & Seegmiller, A. C. (2015). B-ALL Minimal Residual Disease Flow Cytometry. American Journal of Clinical Pathology, 143(5), 716–724. https://doi.org/10.1309/ajcpoojravun75gd
