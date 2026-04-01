# CReM fragment based structure generation

CReM (chemically reasonable mutations) is a fragment-based generative model that breaks a molecule into fragments and replaces them with fragments from a database. It supports three modes: MUTATE (replace a fragment), GROW (replace a hydrogen with a fragment), and LINK (link two molecules via a fragment). This model uses MUTATE and GROW, which can generate thousands of analogues. When more than 100 molecules are generated, 100 diverse representatives are selected using Mini Batch K-Means clustering.

This model was incorporated on 2022-12-15.Last packaged on 2025-10-22.

## Information
### Identifiers
- **Ersilia Identifier:** `eos4q1a`
- **Slug:** `crem-structure-generation`

### Domain
- **Task:** `Sampling`
- **Subtask:** `Generation`
- **Biomedical Area:** `Any`
- **Target Organism:** `Any`
- **Tags:** `Compound generation`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `100`
- **Output Consistency:** `Variable`
- **Interpretation:** Up to 100 newly generated molecules

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| smi_00 | string |  | Generated molecule index 0 using the CReM molecular generator |
| smi_01 | string |  | Generated molecule index 1 using the CReM molecular generator |
| smi_02 | string |  | Generated molecule index 2 using the CReM molecular generator |
| smi_03 | string |  | Generated molecule index 3 using the CReM molecular generator |
| smi_04 | string |  | Generated molecule index 4 using the CReM molecular generator |
| smi_05 | string |  | Generated molecule index 5 using the CReM molecular generator |
| smi_06 | string |  | Generated molecule index 6 using the CReM molecular generator |
| smi_07 | string |  | Generated molecule index 7 using the CReM molecular generator |
| smi_08 | string |  | Generated molecule index 8 using the CReM molecular generator |
| smi_09 | string |  | Generated molecule index 9 using the CReM molecular generator |

_10 of 100 columns are shown_
### Source and Deployment
- **Source:** `Local`
- **Source Type:** `External`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos4q1a](https://hub.docker.com/r/ersiliaos/eos4q1a)
- **Docker Architecture:** `AMD64`, `ARM64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos4q1a.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos4q1a.zip)

### Resource Consumption
- **Model Size (Mb):** `688`
- **Environment Size (Mb):** `674`
- **Image Size (Mb):** `2683.14`

**Computational Performance (seconds):**
- 10 inputs: `30.09`
- 100 inputs: `474.99`
- 10000 inputs: `-1`

### References
- **Source Code**: [https://github.com/DrrDom/crem](https://github.com/DrrDom/crem)
- **Publication**: [https://jcheminf.biomedcentral.com/articles/10.1186/s13321-020-00431-w](https://jcheminf.biomedcentral.com/articles/10.1186/s13321-020-00431-w)
- **Publication Type:** `Peer reviewed`
- **Publication Year:** `2020`
- **Ersilia Contributor:** [DhanshreeA](https://github.com/DhanshreeA)

### License
This package is licensed under a [GPL-3.0](https://github.com/ersilia-os/ersilia/blob/master/LICENSE) license. The model contained within this package is licensed under a [BSD-3-Clause](LICENSE) license.

**Notice**: Ersilia grants access to models _as is_, directly from the original authors, please refer to the original code repository and/or publication if you use the model in your research.


## Use
To use this model locally, you need to have the [Ersilia CLI](https://github.com/ersilia-os/ersilia) installed.
The model can be **fetched** using the following command:
```bash
# fetch model from the Ersilia Model Hub
ersilia fetch eos4q1a
```
Then, you can **serve**, **run** and **close** the model as follows:
```bash
# serve the model
ersilia serve eos4q1a
# generate an example file
ersilia example -n 3 -f my_input.csv
# run the model
ersilia run -i my_input.csv -o my_output.csv
# close the model
ersilia close
```

## About Ersilia
The [Ersilia Open Source Initiative](https://ersilia.io) is a tech non-profit organization fueling sustainable research in the Global South.
Please [cite](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff) the Ersilia Model Hub if you've found this model to be useful. Always [let us know](https://github.com/ersilia-os/ersilia/issues) if you experience any issues while trying to run it.
If you want to contribute to our mission, consider [donating](https://www.ersilia.io/donate) to Ersilia!
