### glourb_serp
___________
###### Description

The glourb_serp repository aims at collecting, cleaning and analysing data relative to Google searches. SERP stands for Search Engine Results Pages and corresponds to the pages displayed in response to a query on a search engine, e.g. Google: ![A diagram showing the structure of a Search Engine Results Page](https://github.com/lbajemon/glourb_serp/blob/main/figures/SERP_structure.png)

The [Value SERP API](https://get.valueserp.com/try-it-free/) is used to collect raw data. The first 100 queries are free but an account must be created. Diverse parameters are entered in the API and the query is ran accordingly: ![A diagram showing the entered parameters](https://github.com/lbajemon/glourb_serp/blob/main/figures/query_parameters_diagram.png)

For example, for the combination Lyon and Rhône river, the following parameters are entered: ![!A diagram showing the entered parameters for the city of Lyon](https://github.com/lbajemon/glourb_serp/blob/main/figures/query_parameters_ex_lyon.png)

The queries will be ran for a list of rivers and cities combinations, which have been selected as part of the GloUrb research project.

Then, we use a web scraping method to extract the textual content of each web page. This makes a consequent digital corpus which we will analyse. 
__________
###### How to use
First, the following scripts must be ran in this specific order, in order to get the full corpus ready for analysis:

1. get_SERP (this script collects data relative to Google searches and gets web pages from SERP, according to a given query)
2. web_scraping (this script extracts the textual content from the web pages)
3. lemmatisation (this script lemmatises the textual content collected)
4. compilation (this script compiles all of the web pages in one df, i.e. the full corpus)

Then the following scripts (optional) can be ran in any order:

*** Clustering 
-   clustering (this script applies a descendant hierarchical classification on our corpus, in order to get lexical worlds)
followed by
-   clustering_map (this scripts maps the results of the clusterisation)
-   plot_clusters (this scripts plots the distribution of the clusters for each city) 

*** Other analysis 
-   lemma_occurrence (this scripts plots the lemma occurrences for each city)   
-   specificity (this script aims to calculate specificity scores for simple words (lemmas) as well as for n-grams)
-   wordcloud (this script plots a wordcloud of our corpus) 
-   keywords_distrib (this scripts maps the global distribution of a given keyword)

*** Critical analysis 
-   localness (this scripts estimates if a given web page is local, i.e. the content is produced locally for a given city/country, based on the TLD and the language)
-   other_search_engines (this script collects data relative to Bing, Yahoo and Baidu searches, in order to compare the results to Google searches results)
-   typology_websites (this script aims to get the types of the collected websites (commercial, social media, institutional, blog, newspaper, etc.))

_________
###### Funding
This work is funded by the French National Research Agency (ANR) (Project GloUrb n° ANR-22-CE03-0005). It is also cofunded by the Labex IMU (ANR-10-LABEX-0088) and the EUR H2O’Lyon (ANR-17-EURE-0018) of Université de Lyon, within the programme ‘Investissements d’Avenir’ operated by ANR. 
