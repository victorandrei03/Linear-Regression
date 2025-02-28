# Linear Regression

## Problem Statement

Passionate about Numerical Methods, Mihai is interested in both **Machine Learning** and **Artificial Intelligence**, and he would like to explore them in more detail. Curious by nature, he starts reading about how he can design a machine learning model trained on an existing dataset of a certain size.

Using a **Supervised Machine Learning** algorithm called **Linear Regression**, Mihai wants to understand more about making predictions and handling errors that might occur in computational processing.

Essentially, **Linear Regression** can be interpreted geometrically as a line that minimizes the root of the sum of the squared distances of the points (data) from a target set.

![image](https://github.com/user-attachments/assets/1d416471-d129-4928-99ef-28791c313444)

From a functional perspective, **Linear Regression** aims to minimize the cost function and loss function. Clearly, there are multiple types of **Linear Regression**, such as simple regression, multiple regression, and logistic regression.

Following his research, Mihai decides to use **Multiple Linear Regression** to predict the price of apartments in his area, as he no longer wants to live with his parents and seeks independence.

A prediction can be written as a function:

\[ h_{\theta}(x) = \theta_0 + \theta_1 x_1 + \theta_2 x_2 + ... + \theta_n x_n + \varepsilon \]

Where:
- **\( h_{\theta}(x) \)** is the predicted value based on features \( x_1, x_2, ..., x_n \)
- **\( \theta_1, ..., \theta_n \)** are the model coefficients (weights)
- **\( \theta_0 \)** is the intercept
- **\( \varepsilon \)** is the prediction error

## Cost Function

To measure how well our model predicts values, we define the cost function:

\[ J(\theta) = \frac{1}{2m} \sum_{i=1}^{m} \left( h_{\theta}(x^{(i)}) - y^{(i)} \right)^2 \]

Where:
- **\( m \)** represents the number of training samples
- **\( x^{(i)} \)** is the feature vector for training example \( i \)
- **\( y^{(i)} \)** is the actual output for example \( i \)

## Optimization Algorithms

Mihai also discovers that optimization techniques can be used to determine the model parameters, particularly:

### Gradient Descent

Gradient Descent is an iterative optimization algorithm used to minimize the cost function by updating the parameters in the direction of the steepest descent, determined by the negative gradient.

The update rule for the parameters is:

\[ \theta_j := \theta_j - \alpha \frac{\partial J}{\partial \theta_j}, \quad \forall j \in \{0, 1, ..., n\} \]

where \( \alpha \) is the learning rate, which controls the step size of the updates. The gradient of the cost function is given by:

\[ \frac{\partial J}{\partial \theta_j} = \frac{1}{m} \sum_{i=1}^{m} \left( h_{\theta}(x^{(i)}) - y^{(i)} \right) x_j^{(i)} \]

Thus, the parameters are updated as:

\[ \theta_j := \theta_j - \alpha \frac{1}{m} \sum_{i=1}^{m} \left( h_{\theta}(x^{(i)}) - y^{(i)} \right) x_j^{(i)} \]

This process is repeated until convergence.

### Normal Equation

The parameters can also be computed directly using the **Normal Equation**, which finds the optimal values by solving:

\[ \theta = (X^T X)^{-1} X^T Y \]

However, computing the inverse of a matrix can be costly for large datasets, making Gradient Descent preferable in such cases.

### Conjugate Gradient Method

For large-scale problems, an alternative to direct inversion is the **Conjugate Gradient Method**, which iteratively solves \( X^T X \theta = X^T Y \) without explicitly computing \( (X^T X)^{-1} \). The algorithm follows these steps:

1. Initialize \( \theta \) and compute the residual \( r_0 = X^T Y - X^T X \theta_0 \)
2. Set the search direction \( p_0 = r_0 \)
3. For each iteration:
   - Compute step size \( \alpha_k \)
   - Update parameters \( \theta_{k+1} = \theta_k + \alpha_k p_k \)
   - Compute new residual and search direction

This method is particularly useful for sparse and large-dimensional problems.

![image](https://github.com/user-attachments/assets/36e32adc-0e05-4a6a-a10c-f700ab329a79)

## CSV FORMAT

![image](https://github.com/user-attachments/assets/ea506bb5-b736-40cd-90b8-b3b99dc3cc3a)

## Regularization

To prevent **overfitting**, Mihai explores two regularization techniques:

1. **L1 Regularization (Lasso Regression):** Encourages sparsity by adding an L1 penalty.
2. **L2 Regularization (Ridge Regression):** Reduces the magnitude of parameters using an L2 penalty.

The cost functions for regularized regression are:

- **Lasso Regression:**
  \[ J_{L1}(\theta) = J(\theta) + \lambda \sum_{j=1}^{n} |\theta_j| \]

- **Ridge Regression:**
  \[ J_{L2}(\theta) = J(\theta) + \lambda \sum_{j=1}^{n} \theta_j^2 \]

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

