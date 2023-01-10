import numpy as np
import random
import math
import platform
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt
from pandas import read_csv
import tkinter
from enum import Enum
import warnings
import os
import csv


LOWER_LIMIT = 3
UPPER_LIMIT = 17
SAMPLES = 100000

warnings.filterwarnings('ignore')

#enum to identify the used model
model_types = Enum('error_rate_model', 'mean_error_model')

#function that generates an equally distributed pool of inputs
#bit_width: bit width of the adder
#return: equally distributed pool of inputs
def generate_input_stimuli(bit_width: int):
    max_val = 2 ** bit_width

    if bit_width < UPPER_LIMIT:
        input_space = list(range(0, max_val))

    else:
        input_space = list(np.linspace(0, max_val, SAMPLES).astype(int))

    return input_space

#mathematical model for the error rate
def error_rate_model(x, a, b, c):
    return 1-a*np.exp(-(b+c)*x)

#mathematical model for the mean error
def mean_error_model(x, a, b, c):
    return a*0-b+b*np.exp(c*x)

#function to save the generated plots
#plt: plot to save
#model_type: type of the model that is plotted
def save_plot(plt, model_type):

    if not os.path.exists('plots'):
        os.makedirs('plots')

    os_path = "\\plots\\" if platform.system() == "Windows" else "/plots/"
    plots_path = os.path.dirname(os.path.abspath(__file__)) + os_path

    if model_type == "error_rate_model":
        plt.savefig(plots_path + 'error_rate.png')
    else:
        plt.savefig(plots_path + 'mean_error.png')
    plt.close()



#function to calculate the optimal parameters for the given mathematical model
#x_data: input data set
#y_data: output data set
#p0: initial paramter values for the curve fitting algorithm
#return: the optimal paramter values for the given mathematical model
def curve_fitting_module(x_data, y_data, model_type, p0):
    x = np.array(x_data)
    y = np.array(y_data)

    model = error_rate_model if model_type == 'error_rate_model' else mean_error_model

    popt = curve_fit(model, x, y, p0)
    a_opt, b_opt, c_opt = popt[0]

    x_model = np.linspace(min(x), max(x), 100)
    y_model = model(x_model, a_opt, b_opt, c_opt)

    plt.scatter(x, y)
    plt.plot(x_model, y_model, color='r')
    plt.xlabel('approximation degree k')
    plt.ylabel('error rate [%]' if model_type == 'error_rate_model' else 'mean error')

    save_plot(plt, model_type)

    return popt[0]


def create_report(approx_degree, error_rate, mean_error):

    with open('report.csv', 'w') as myfile:
        wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
        wr.writerow(["approx degree", "error rate", "mean error"])
        for i in range(len(approx_degree)):
            wr.writerow([approx_degree[i], abs(error_rate[i]), mean_error[i]])






#function(module) that analysis the behaviour(error metrics) of a given approximate n-bit-adder
#approximate_adder: an approximated adder
#bit_width: bit width of the adder
def computation_module(approximate_adder, bit_width: int):
    error_rate = []
    mean_error = []

    input_space = generate_input_stimuli(bit_width)
    num_of_approximations = math.ceil(bit_width / 2) if bit_width > LOWER_LIMIT else bit_width
    approximation_degrees = list(np.linspace(1, bit_width, num_of_approximations).astype(int))
    total_additions = (2 ** bit_width) if bit_width < UPPER_LIMIT else SAMPLES

    for degree in approximation_degrees:
        errors = []
        total_errors = 0

        for k in range(total_additions):
            input_a = random.choice(input_space)
            input_b = random.choice(input_space)

            exact_result = input_a + input_b
            approximate_result = approximate_adder(input_a, input_b, degree, bit_width)

            abs_error = abs(exact_result - approximate_result)
            errors.append(abs_error)
            total_errors = total_errors if abs_error == 0 else total_errors + 1

        error_rate.append(total_errors / total_additions)
        mean_error.append(sum(errors) / len(errors))

    error_rate_model_parameter = curve_fitting_module(approximation_degrees, error_rate, 'error_rate_model',
                                                    p0=[1.0, 1.0, 1.0])
    mean_error_model_parameter = curve_fitting_module(approximation_degrees, mean_error, 'mean_error_model',
                                                   p0=[1, 1, 0.693])

    report_approx_degrees = []
    report_error_rates = []
    report_mean_errors = []

    for i in range(bit_width):
        report_approx_degrees.append(i)
        report_error_rates.append(round(error_rate_model(i, error_rate_model_parameter[0], error_rate_model_parameter[1],
                                  error_rate_model_parameter[2]), 2))
        report_mean_errors.append(round(mean_error_model(i, mean_error_model_parameter[0], mean_error_model_parameter[1],
                                  mean_error_model_parameter[2]),2))

    create_report(report_approx_degrees, report_error_rates, report_mean_errors)

    """
    print("function describing the error rate of the given approximated adder: f(k)="
    + f"1-{error_rate_model_parameter[0]:.3f}*e^(-{(error_rate_model_parameter[1]+error_rate_model_parameter[2]):.3f}*k)"
    + " with k being the approximation degree")
    print("function describing the mean error of the given approximated adder: f(k)="
    + f"-{mean_error_model_parameter[1]:.3f}+{mean_error_model_parameter[1]:.3f}*e^({mean_error_model_parameter[2]:.3f}*k)"
    + " with k being the approximation degree")
    """


