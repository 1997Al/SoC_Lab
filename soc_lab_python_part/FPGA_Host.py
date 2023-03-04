import serial
import serial.tools.list_ports
from topModule import *
from approximateAdders import *
import PySimpleGUI as sg
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg, FigureCanvasAgg
import matplotlib
from matplotlib.figure import Figure
matplotlib.use('TkAgg')



SERIAL_PORT = "COM5"
SERIAL_RATE = 115200

def draw_figure(canvas, figure, loc=(0, 0)):
    figure_canvas_agg = FigureCanvasTkAgg(figure, canvas)
    figure_canvas_agg.draw()
    figure_canvas_agg.get_tk_widget().pack(side='top', fill='both', expand=1)
    return figure_canvas_agg

def open_com():

    # create COM-Port Selection Window
    my_comport = 'NULL'
    ports = [comport.device for comport in serial.tools.list_ports.comports()]
    layout =   [[sg.Push(), sg.Text('Select COM-Port', font='Helvetica 14'), sg.Push()], 
                [sg.Push(), sg.Combo(ports), sg.Button('OK', font='Helvetica 10'), sg.Push()]]

    window = sg.Window('COM-Ports', layout)

    # Create an event loop
    while True:
        event, values = window.read()
        # End program if user closes window or
        # presses the OK button
        if event == 'OK' or event == sg.WIN_CLOSED:
            my_comport = values[0]
            break

    window.close()

    return serial.Serial(my_comport, baudrate=SERIAL_RATE, timeout=0.2)

def create_main_layout(size):
    

    er_column = [[sg.Push(), sg.Text('Error Rate', font='Helvetica 40'), sg.Push()],
                 [sg.Canvas(size=size, key='-ERRORRATE-')]]

    me_column = [[sg.Push(), sg.Text('Mean Error', font='Helvetica 40'), sg.Push()],
                 [sg.Canvas(size=size, key='-MEANERROR-')]]

    layout =   [[sg.Push(), sg.Text('SoC', font='Helvetica 40'), sg.Push()], 
                [sg.Column(er_column), sg.VSeparator() , sg.Column(me_column)],
                [sg.Push(), sg.Button('Exit', font='Helvetica 14'), sg.Push()]]

    return layout

def wait_for_input(ser : serial.Serial):

    reading = ''
    layout =   [[sg.Push(), sg.Text('Press button on FPGA', font='Helvetica 14'), sg.Push()]]
    window = sg.Window('Waiting', layout, finalize=True)

    # Create an event loop
    while True:
        event, values = window.read(timeout=200)
        serial_in = ser.readline()
        reading = str(serial_in)[2:str(serial_in).__len__()-5]
        # End program if user closes window or
        # presses the OK button
        if len(reading) > 0:
            break

        if event == sg.WIN_CLOSED:
            print(len(reading))
            break

    window.close()
    return reading    

def keep_data(approx_degree, error_rate, mean_error):

    layout =   [[sg.Push(), sg.Text('Keep Data?'), sg.Push()], 
                [sg.Push(), sg.Button('Yes'), sg.Button('No'), sg.Push()]]

    window = sg.Window('Keep Data?', layout)

    # Create an event loop
    while True:
        event, values = window.read()
        # End program if user closes window or
        # presses the OK button
        if event == 'No' or event == sg.WIN_CLOSED:
            break
        if event == 'Yes':
            create_report(approx_degree, error_rate, mean_error)
            break

    window.close()
    return

def main():
    w, h = figsize = (7, 6)
    dpi = 100
    size = (w*dpi, h*dpi)

    ser = open_com()
    reading = wait_for_input(ser)
    
    #while len(reading) < 1:
    #    serial_in = ser.readline()
    #    reading = str(serial_in)[2:str(serial_in).__len__()-5]
        
    print(reading)
    ER0=0
    ER1=0
    AE0=0
    AE1=0
    split_reading=reading.split(',')
    ER0 = float(split_reading[0][4:split_reading[0].__len__()])
    AE0 = float(split_reading[1][5:split_reading[1].__len__()])
    ER1 = float(split_reading[2][5:split_reading[2].__len__()])
    AE1 = float(split_reading[3][5:split_reading[3].__len__()])
    print(str(ER0) + " " + str(AE0) + " " + str(ER1) + " " + str(AE1))

    x_values = np.arange(0, 16)
    x, y_1 = [0, 4, 8], [0, ER0, ER1]
    y_2 = [0, AE0, AE1]

    model_type = 'error_rate_model'
    popt = curve_fitting_module(x, y_1, model_type, [1,1,1], 0)
    a_opt, b_opt, c_opt = popt
    y_values_1 = error_rate_model(x_values, a_opt, b_opt, c_opt)
    
    model_type = 'mean_error_model'
    popt = curve_fitting_module(x, y_2, model_type, [1,1,1], 0)
    a_opt, b_opt, c_opt = popt
    y_values_2 = mean_error_model(x_values, a_opt, b_opt, c_opt)    

    window = sg.Window('Approximated Values',create_main_layout(size), finalize=True)

    fig1 = Figure(figsize=figsize, dpi=dpi)
    ax1 = fig1.add_subplot(111)
    ax1.scatter(x_values, y_values_1, color='black')
    ax1.scatter(x[1:3], y_1[1:3], color='blue')
    ax1.set_xlabel('approximation degree k')
    ax1.set_ylabel('error rate [%]')
    fig_agg1 = draw_figure(window['-ERRORRATE-'].TKCanvas, fig1)

    fig2 = Figure(figsize=figsize, dpi=dpi)
    ax2 = fig2.add_subplot(111)
    ax2.scatter(x_values, y_values_2, color='black')
    ax2.scatter(x[1:3], y_2[1:3], color='blue')
    ax2.set_xlabel('approximation degree k')
    ax2.set_ylabel('mean error')
    fig_agg2 = draw_figure(window['-MEANERROR-'].TKCanvas, fig2)

    while True:
        event, values = window.read(timeout=200)
        if event in ('Exit', None):
            break
    
    keep_data(x_values, y_values_1, y_values_2)
    window.close()

if __name__ == "__main__":
    main()
