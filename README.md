# codes

## Conditional transfer entropy with stats.nb
- Mathematica code to reproduce data in Table 1 and Supplementary Table 4. This file computes conditional transfer entropy on binary time series, generates surrogate symbolic time series following a local permutation scheme, and estimates p-values for conditional transfer entropy.


## Conditional transfer entropy state by state with stats.nb
- Mathematica code to reproduce data in in Figure 3, Supplementary Figures 1-11, and Supplementary Table 1. This file computes conditional transfer entropy on binary time series, generates surrogate symbolic time series following a local permutation scheme, and estimates p-values for conditional transfer entropy.


## Conditional transfer entropy with delays.nb
- Mathematica code to reproduce data in Supplementary Figure 12. This file computes conditional transfer entropy on binary time series with delays.


## Mutual information with stats.nb
- Mathematica code to reproduce data in Supplementary Tables 2 and 3. This file computes mutual information on binary time series, generates surrogate symbolic time serees following a local permutation scheme, and estimates p-values for mutual information.


## Mutual information with delays.nb
- Mathematica code to reproduce data in Supplementary Figure 13. This file computes mutual information on binary time series with delays.


## Mathematical model.nb
- Mathematica code to reproduce data in Supplementary Figures 15 and 16 and Supplementary Table 5. This file generates the synthetic data (see Supplementary Information for details) and plot an ROC curve.

# data   


## background_checks_raw.xlsx:
- Monthly background checks for each state from 1999 to 2017 (source: FBI).


## background_checks_processed.xlsx: 
- Monthly background checks for each state from 1999 to 2017, detrended and seasonally adjusted for each state except Hawaii, for which we present raw background checks due to the fact that we virtually have no changes (all zeros except of one month).

## summary_data.xlsx
- Data used for the analysis on conditional transfer entropy and mutual information. Monthly articles on "firearm laws and regulations" are the sum of New York Times and Washington Post (source: ProQuest). Monthly articles on "unemployment" are the sum of New York Times and Washington Post (source: ProQuest). Monthly articles on "shootings" excluding "firearm laws and regulations" are the sum of New York Times and Washington Post (source: ProQuest). Total background checks are detrended and deseasonalized after removing Hawaii and Connecticut due to irregular reports on background checks.


## state_laws.xlsx
- 133 firearm-related laws in each state from 1991 to 2017 (source: Firearm Laws Project).


## state_laws_code.xlsx
- Detailed explanation of each laws (source: Firearm Laws Project).


## populations.xlsx
- Average populations by state from 1999 to 2017 (source: US Census Bureau).
