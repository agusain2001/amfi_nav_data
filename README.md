# AMFI NAV Data Extractor

This project provides a simple shell script to extract Scheme Name and Net Asset Value (NAV) data from the AMFI (Association of Mutual Funds in India) website and save it in a Tab-Separated Values (TSV) format.

## File Structure

```
.
├── extract_nav.sh
├── amfi_nav.tsv
├── recommendation.md
└── README.md
```

*   `extract_nav.sh`: The shell script responsible for fetching, parsing, and extracting the NAV data.
*   `amfi_nav.tsv`: The output file containing the extracted Scheme Name and Net Asset Value in TSV format.
*   `recommendation.md`: A document providing a recommendation on the data format (TSV vs. JSON) for this project.
*   `README.md`: This file, providing an overview of the project.

## How it Was Done: A Step-by-Step Explanation

This section details the process followed to create this data extraction solution. For a more in-depth explanation, please refer to `project_description.md`.

1.  **Understanding the Data Source:** Analyzed the structure of the `NAVAll.txt` file from the AMFI website, identifying data fields and non-data lines.
2.  **Creating the Extraction Script:** Developed an initial shell script (`extract_nav.sh`) using `curl` to download the data, `grep` for initial filtering, and `awk` to extract the Scheme Name and Net Asset Value.
3.  **Testing and Refining the Script:** Iteratively executed the script and refined the `grep` commands to accurately filter out all unwanted header and non-data lines, ensuring only relevant data was processed.
4.  **Evaluating Data Formats:** Conducted an analysis comparing TSV and JSON formats for this specific dataset, concluding that TSV was more appropriate due to its simplicity and the tabular nature of the data.


