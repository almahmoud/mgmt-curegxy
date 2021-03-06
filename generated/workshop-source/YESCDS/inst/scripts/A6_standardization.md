# Age adjustment for fair comparisons

Two basic types of comparison are of interest in cancer epidemiology:

-   Do cancer rates differ between geographic regions (counties, states,
    countries, …)?
-   Do cancer rates change over time?

Because cancer risks increaase generally as people age, comparisons of
cancer risk should account for the “age structure” in the regions or
time periods being compared.

# Crude rate examples

Crude rates ignore age structure. Here are some examples of mortality
rates taken (with rounding) from a Statistics Canada web site.

    canada_crude[6,4] = NA
    canada_crude

Question: What is the (rounded) crude mortality rate for the older age
group in 2011?

# Age structure

The “age structure” of a population is the percentage of population
reporting ages in different groups. Usually the grouping is finer than
what we are using in this example; more realistic illustrations are
given below.

Statistics Canada proposed using the age structure of Canada in 1991 as
a reference for standardization. In 1991, 62% of Canadians were age 0 to
39y, and 38% were 40y and older.

We use these percentages to adjust the crude rates.

# Adjusted rate computation

For the year 2000, we take the crude rates of 7 and 450 (per 100000
population) and reweight and sum:

    7 * .62 + 450 * .38

yielding 175.3 per 100000 “standard population”. This is the age
standardized mortality rate in the year 2000.

## Questions

A.6.1 What is the age standardized mortality rate for 2011?

A.6.2 What can you say about the cancer mortality trend in Canada
between 2000 and 2011?

## Answers

A.6.1

A.6.2

# Some examples of age structure models

A [methods
paper](https://wonder.cdc.gov/wonder/help/cancer/fayfeuerconfidenceintervals.pdf)
on confidence intervals for standardized rates includes the following
display:

![Age structure](images/standardPopGraphs.jpg)

We read this as showing that in the US in 1970, about 18% of the
population was under 10 years of age, while in the world overall, about
22% of the population was under 10 years of age.

## Question

A.6.3 What features of the bottom two displays above suggest that it
will be important to differentiate age distributions for men and women
in forming standardized rates?

## Answer

A.6.3
