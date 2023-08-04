# CReM fragment based structure generation

CReM (chemically reasonable mutations) is a fragment-based generative model that takes as input a small molecule, breaks it down into fragments and iteratively replaces them with other fragments from a database. It has three implementations (MUTATE: arbitrarily replaces one fragment with another one); GROW (arbitrarily replaces an hydrogen with another fragment) and LINK (replaces hydrogen atoms in two molecules to link them with a fragment). Here, we use a MUTATE and GROWTH approach, which provide outputs that vary by order of 1000s. For sake of simplicity, for such molecules generating over 100 molecules, only 100 diverse molecules are selected. This selection is done using mini batch K Means clustering with 100 clusters and molecules closest to the centroid in each cluster are returned.

## Identifiers

* EOS model ID: `eos4q1a`
* Slug: `crem-structure-generation`

## Characteristics

* Input: `Compound`
* Input Shape: `Single`
* Task: `Generative`
* Output: `Compound`
* Output Type: `String`
* Output Shape: `List`
* Interpretation: Up to 100 newly generated molecules

## References

* [Publication](https://jcheminf.biomedcentral.com/articles/10.1186/s13321-020-00431-w)
* [Source Code](https://github.com/DrrDom/crem)
* Ersilia contributor: [DhanshreeA](https://github.com/DhanshreeA)

## Ersilia model URLs
* [GitHub](https://github.com/ersilia-os/eos4q1a)
* [AWS S3](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos4q1a.zip)
* [DockerHub](https://hub.docker.com/r/ersiliaos/eos4q1a) (AMD64, ARM64)

## Citation

If you use this model, please cite the [original authors](https://jcheminf.biomedcentral.com/articles/10.1186/s13321-020-00431-w) of the model and the [Ersilia Model Hub](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff).

## License

This package is licensed under a GPL-3.0 license. The model contained within this package is licensed under a BSD-3.0 license.

Notice: Ersilia grants access to these models 'as is' provided by the original authors, please refer to the original code repository and/or publication if you use the model in your research.

## About Us

The [Ersilia Open Source Initiative](https://ersilia.io) is a Non Profit Organization ([1192266](https://register-of-charities.charitycommission.gov.uk/charity-search/-/charity-details/5170657/full-print)) with the mission is to equip labs, universities and clinics in LMIC with AI/ML tools for infectious disease research.

[Help us](https://www.ersilia.io/donate) achieve our mission!