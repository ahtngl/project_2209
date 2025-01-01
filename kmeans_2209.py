
import pandas as pd
import numpy as np
import os
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.metrics import silhouette_score


data = pd.read_csv('/Users/alihanhatunoglu/Desktop/2209/CSV_combined/2209_data_scaled.csv')

data_feature = data.drop('CD24', axis=1)
#data_feature = data_feature.drop('CD38', axis=1)
data_feature = data_feature.drop('CD45', axis=1)
data_feature = data_feature.drop('CD22', axis=1)
data_feature = data_feature.drop('HLADR', axis=1)
data_feature = data_feature.drop('CD36', axis=1)
data_feature = data_feature.drop('CD20' , axis=1)


inertia = []
k_values = range(1, 10)

for k in k_values:
    kmeans = KMeans(n_clusters = k, random_state = 42, n_init = 10)
    kmeans.fit(data_feature)
    inertia.append(kmeans.inertia_)

plt.plot(k_values, inertia, 'bo-')
plt.xlabel('Number of Clusters (k)')
plt.ylabel('Inertia')
plt.title('Elbow Method for Optimal k')
plt.show()

kmeans = KMeans(n_clusters=4, random_state=42, n_init=10)
data_feature['Cluster'] = kmeans.fit_predict(data_feature)

print(data_feature['Cluster'].value_counts())


sns.scatterplot(
    x=data_feature['CD10'], 
    y=data_feature['CD19'], 
    hue=data_feature['Cluster'], 
    palette='viridis'
)
plt.xlabel('CD10')
plt.ylabel('CD19')
plt.title('CD10 vs CD19 - Clusters')
plt.show()

# Calculate the silhouette score
#silhouette_avg = silhouette_score(data_feature[['CD10', 'CD19', 'CD34']], data_feature['Cluster'])
#print(f"Average Silhouette Score: {silhouette_avg}")

#os.chdir('/Users/alihanhatunoglu/Desktop/2209/CSV_combined')  # Changes the working directory
#data_feature.to_csv('2209_3_cluster.csv', index=False)  # index = False prevents adding a row index column

