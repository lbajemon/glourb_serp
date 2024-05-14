### glourb_serp

The glourb_serp repository aims at collecting, cleaning and analysing data relative to Google searches. SERP stands for Search Engine Results Pages and corresponds to the pages displayed in response to a query on a search engine, e.g. Google: ![A diagram showing the structure of a Search Engine Results Page](https://github.com/lbajemon/glourb_serp/blob/main/figures/SERP_structure.png)

The [Value SERP API](https://get.valueserp.com/try-it-free/){width="105" height="17"} is used to collect raw data. The first 100 queries are free but an account must be created. Diverse parameters are entered in the API and the query is ran accordingly: ![A diagram showing the entered parameters](https://github.com/lbajemon/glourb_serp/blob/main/figures/query_parameters_diagram.png)

For example, for the combination Lyon and Rhône river, the following parameters are entered: ![!A diagram showing the entered parameters for the city of Lyon](https://github.com/lbajemon/glourb_serp/blob/main/figures/query_parameters_ex_lyon.png)

The queries will be ran for a list of rivers and cities combinations, which have been selected as part of the GloUrb research project (funded by the French National Research Agency, n° ANR-22-CE03-0005).

First, the following scripts must be ran in that order:

-   get_data

-   lemmatisation

-   compilation

-   clustering

Then the following scripts (optional) can be ran in any order:

-   frequency

-   localness

-   topic_modelling

-   clustering_map

-   specificity
