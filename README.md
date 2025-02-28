# Linear Regression

## Problem Statement

Passionate about Numerical Methods, Mihai is interested in both **Machine Learning** and **Artificial Intelligence**, and he would like to explore them in more detail. Curious by nature, he starts reading about how he can design a machine learning model trained on an existing dataset of a certain size.

Using a **Supervised Machine Learning** algorithm called **Linear Regression**, Mihai wants to understand more about making predictions and handling errors that might occur in computational processing.

Essentially, **Linear Regression** can be interpreted geometrically as a line that minimizes the root of the sum of the squared distances of the points (data) from a target set.

![image](https://github.com/user-attachments/assets/1d416471-d129-4928-99ef-28791c313444)

From a functional perspective, **Linear Regression** aims to minimize the cost function and loss function. Clearly, there are multiple types of **Linear Regression**, such as simple regression, multiple regression, and logistic regression.

Following his research, Mihai decides to use **Multiple Linear Regression** to predict the price of apartments in his area, as he no longer wants to live with his parents and seeks independence.

A prediction can be written as a function:

![image](https://github.com/user-attachments/assets/34c5e952-f0a6-4035-9aea-3b031ad6c9ad)

## Cost Function

To measure how well our model predicts values, we define the cost function:

![image](https://github.com/user-attachments/assets/6cbe5096-5600-4349-8d83-086ab0ff0f1a)

## Optimization Algorithms

Mihai also discovers that optimization techniques can be used to determine the model parameters, particularly:

### Gradient Descent

Gradient Descent is an iterative optimization algorithm used to minimize the cost function by updating the parameters in the direction of the steepest descent, determined by the negative gradient.

![image](https://github.com/user-attachments/assets/8bd5a5c5-e34e-4fa4-9359-08ac46b37773)

### Normal Equation

The parameters can also be computed directly using the **Normal Equation**, which finds the optimal values by solving:

![image](https://github.com/user-attachments/assets/18f9c120-51cf-42a8-afe5-718d3720a81d)

However, computing the inverse of a matrix can be costly for large datasets, making Gradient Descent preferable in such cases.

### Conjugate Gradient Method

![image](https://github.com/user-attachments/assets/3782ed16-a730-41aa-8b3b-dfda05061bd9)

![image](https://github.com/user-attachments/assets/36e32adc-0e05-4a6a-a10c-f700ab329a79)

## CSV FORMAT

![image](https://github.com/user-attachments/assets/ea506bb5-b736-40cd-90b8-b3b99dc3cc3a)

## Regularization

To prevent **overfitting**, Mihai explores two regularization techniques:

1. **L1 Regularization (Lasso Regression):** Encourages sparsity by adding an L1 penalty.
2. **L2 Regularization (Ridge Regression):** Reduces the magnitude of parameters using an L2 penalty.

The cost functions for regularized regression are:

![image](https://github.com/user-attachments/assets/909430a5-ac80-4e33-bc52-85b9499e514e)

where \( \lambda \) controls the strength of the regularization.

## Implementation Requirements

Based on the theoretical background, you need to implement the following functions in MATLAB:

- `parse_data_set_file(file_path)`: Parses the dataset and converts categorical values.
- `prepare_for_regression(InitialMatrix)`: Transforms categorical data into numerical format.
- `linear_regression_cost_function(Theta, Y, FeatureMatrix)`: Computes the cost function.
- `gradient_descent(FeatureMatrix, Y, n, m, alpha, iter)`: Implements Gradient Descent.
- `normal_equation(FeatureMatrix, Y, tol, iter)`: Implements the Normal Equation.
- `lasso_regression_cost_function(Theta, Y, FeatureMatrix, lambda)`: Computes L1-regularized cost.
- `ridge_regression_cost_function(Theta, Y, FeatureMatrix, lambda)`: Computes L2-regularized cost.

All matrices should be stored efficiently using **sparse format** where applicable.

---

