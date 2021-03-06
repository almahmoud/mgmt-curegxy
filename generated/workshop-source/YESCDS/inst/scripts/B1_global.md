# Interactive cancer maps

-   Twenty years ago the most common Geographic Information System was
    the paper map or road atlas
-   Now our cell-phones can ask the internet how to get to where we want
    to go, efficiently
-   Understanding how cancer events unfold in different geographic
    regions is important for public health
    -   Are there important environmental hazards at specific locations?
    -   Are there clues to genetic origins of particular cancers?
    -   Are culturally shared behaviors leading to increased risk?
-   Even though we are comfortable with annotated maps, creating and
    using “cancer maps” to reason about cancer risk requires some
    training
-   In this notebook we will work with some interactive maps on the web,
    and we will produce some maps using R programming

A basic concern in mapping cancer rates is discovery of “clusters”. A
review of cancer cluster investigations was [published in
2012](https://pubmed.ncbi.nlm.nih.gov/22519802/). Results:

> We reviewed 428 investigations evaluating 567 cancers of concern. An
> increase in incidence was confirmed for 72 (13%) cancer categories
> (including the category “all sites”). Three of those were linked (with
> variable degree of certainty) to hypothesized exposures, but only one
> investigation revealed a clear cause.

The conclusion of this report:

> There are fundamental shortcomings to our current methods of
> investigating community cancer clusters. We recommend a
> multidisciplinary national dialogue on creative, innovative approaches
> to understanding when and why cancer and other chronic diseases
> cluster in space and time.

This motivates us to learn about map production and rate estimation in
YES for CURE.

## Exercises

Use the [International Agency for Research on Cancer (IARC) map
tool](https://gco.iarc.fr/today/online-analysis-map?v=2020&mode=population&mode_population=continents&population=900&populations=900&key=asr&sex=0&cancer=39&type=0&statistic=5&prevalence=0&population_group=0&ages_group%5B%5D=0&ages_group%5B%5D=17&nb_items=10&group_cancer=1&include_nmsc=0&include_nmsc_other=0&projection=natural-earth&color_palette=default&map_scale=quantile&map_nb_colors=5&continent=0&show_ranking=0&rotate=%255B10%252C0%255D)
to survey mortality from cancer in 2020 for individuals aged 10-24. You
should see something like the display below.

![IARC map](images/IARCoverall.jpg)

B.1.1 True or False: Age standardized mortality from cancer in 2020 for
persons aged 10-24 is greater in Vietnam than in neighboring countries.

Use the IARC map tool to produce a worldwide map of breast cancer
incidence for women aged 60-79.

B.1.2 What is the Scandinavian country with largest estimate of
age-standardized breast cancer incidence for women aged 60-79?

## Answers

B.1.1

B.1.2
