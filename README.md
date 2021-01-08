<!-- PROJECT LOGO -->
<p align="center">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Diabetes in Pima Native Americans</h3>

  <p align="center">
    Using a neural network model to determine what causes diabetes in this community.
    <br />
    <a href="https://github.com/Mathurkarishma/pima-diabetes"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Mathurkarishma/pima-diabetes/issues">Report Bug</a>
    ·
    <a href="https://github.com/Mathurkarishma/pima-diabetes/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

We will be speaking into a dataset that describes the medical records for Pima Native Americans and whether or not each patient will have an onset of diabetes.  The goal is to determine which factors have higher chances to be leading causes of diabetes in the Pima Native American community.  By using a neural network model, one should expect to determine the significance behind certain characteristics when estimating either a diabetic or non-diabetic patient.

Here is a [link](https://www.kaggle.com/kumargh/pimaindiansdiabetescsv) to the Pima Native American Diabetes dataset information.

### Built With

* [R](https://cran.r-project.org/)
* [RStudio](https://rstudio.com/)


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running, download the `neural-network.R` and the text input file, `pima_diabetes.csv`. Then run the code in an IDE software, such as RStudio.  Set the working directory to the location of the CSV file.

<!-- USAGE EXAMPLES -->
## Usage

The code guides you through the following:

1. Importing the CSV file
2. Visualizing the formatting of the variables (datatypes, number of rows/columns, measures of central tendancy, statistical descriptions, etc.)
3. Download packages to build a neural network model
4. Scale the independent variables to help speed up the learning phase of the model
5. Exploring through histograms to find interesting variables
6. Set the seed to allow for reproducability and split the dataset into a training set and test set
7. Perform the neural network model and choose initial parameters, such as weights and hidden layers
8. Visualize neural network when plotted and evaluate confusion matrix
6. Change parameters to improve accuracy
7. Compare model evaluation methods such as sensitivity, specificity, positive prediction value, negative prediction value, and prevalence of the data

<!-- CONTACT -->
## Contact

Karishma Mathur - karishma324@gmail.com

Project Link: [https://github.com/Mathurkarishma/pima-diabetes](https://github.com/Mathurkarishma/pima-diabetes)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* Dr. Firdu Bati at [University of Maryland, Global Campus](https://www.umgc.edu/) - Fall 2019 </br >
* [Pima Native American Diabetes Dataset Description](https://www.kaggle.com/kumargh/pimaindiansdiabetescsv)
