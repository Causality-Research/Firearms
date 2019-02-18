
#    codes

## Conditional transfer entropy with stats.nb
- Mathematica code to reproduce data in Tables 1, 2, and S4. This file computes conditional transfer entropy on binary time series, generate surrogate symbolic time sieres following a local permutation scheme, and estimate p-values for conditional transfer entropy.


Conditional transfer entropy state by state with stats.nb
- Mathematica code to produce data in Figures 4, 5 and S1-S11. This file computes conditional transfer entropy on binary time series, generate surrogate symbolic time sieres following a local permutation scheme, and estimate p-values for conditional transfer entropy.


Conditional transfer entropy with delays.nb
- Mathematica code to reproduce data in Figure S12. This file computes conditional transfer entropy on binary time series with delays.


Mutual information with stats.nb
- Mathematica code to reproduce data in Tables S2 and S3. This file computes mutual information on binary time series, generate surrogate symbolic time sieres following a local permutation scheme, and estimate p-values for conditional transfer entropy.


Mutual information with delays.nb
- Mathematica code to reproduce data in Figure S13. This file computes mutual information on binary time series with delays.


Mathematical model.nb
- Mathematica code to reproduce data in Figures S15 and S16. This file generates the synthetic data (see Supplementary Information for details) and plot an ROC curve.



#    data   


background_checks_raw.xlsx:
- Monthly background checks for each state from 1999 to 2017 (source: FBI).


background_checks_processed.xlsx: 
- Monthly background checks for each state from 1999 to 2017, detrended and seasonally adjusted for each state except Hawaii. Hawaii is the raw background checks due to virtually no changes (all zeros except one month).

summary_data.csv
- Data used for the analysis on conditional transfer entropy and mutual information. Monthly articles on "firearm laws and regulations" are the sum of New York Times and Washington Post (source: ProQuest). Monthly articles on "unemployment" are the sum of New York Times and Washington Post (source: ProQuest). Monthly articles on "shootings" excluding "firearm laws and regulations" are the sum of New York Times and Washington Post (source: ProQuest). Total background checks are detrended and deseasonalized after removing Hawaii and Connecticut due to irregular reports on background checks.


state_laws.xlsx
- 133 firearm-related laws in each state from 1991 to 2017 (source: Firearm Laws Project).


state_laws_code.xlsx
- Detailed explanation of each laws (source: Firearm Laws Project).


populations.xlsx
- Average populations by state from 1999 to 2017 (source: US Census Bureau).
