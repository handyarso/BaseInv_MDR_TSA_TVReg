# BaseInv_MDR_TSA_TVReg

# Basement Relief Estimator based on the Integration of Maximum Difference Reduction (MDR), Trend Surface Analysis (TSA), and Total Variation Regularization (TVReg) Methods On Gravity Data with Seismic Interfaces.

## Descriptions:

Integrated geophysical research has emerged as a widely adopted and optimal framework. Each geophysical method possesses its own set of advantages and disadvantages. Therefore, integrating multiple methods at a the same location yields optimal outcomes. The seismic method offers superior resolution in measurement results compared to non-seismic methods. However, in some situations, seismic data imaging may yield inadequate quality, such as in delineating steep structural patterns, thick volcanic deposits, and reef limestone lithology. Under such conditions, seismic data often appears blurry due to attenuation of acoustic waves in the medium, leading to an unclear depiction of the undulation pattern of the basement rock. To enhance interpretation, the results derived from seismic data can be further complemented by integrating the gravity method. By attributing specific density values to the subsurface rock layers derived from seismic data, it becomes possible to estimate the obscured undulation pattern of the underlying rock. This estimation is based on the gravitational field observed at the surface, as it represents a superposition of density elements of all rocks beneath the surface. Incorporating Trend Surface Analysis (TSA) enables the direct utilization of complete Bouguer anomaly (CBA) data in calculations. Furthermore, the inclusion of Total Variation Regularization (TVReg) facilitates the reconstruction of vertical structural patterns beneath the surface. The bedrock depth estimation algorithm is packaged as an additional module program, allowing for seamless integration into other software systems. Nevertheless, these programs can also be executed independently. 


## To use the program, follow these steps:
[1] Open the file "load_path.m" and specify the path of the program directory on your PC.<br>
[2] Place your field datasets in the "datasets" folder. These datasets will be used for calculations.<br>
[3] Navigate to the "parameters" folder and open the file "load_parameters.m". Modify this file according to your specific parameters and requirements. In this file, you may choose whether to use built in TSA or your specific second order regional coefficient.<br>
[4] Inside the "utils" folder, you'll find several files:<br>
- "Hasil_RealCase.m": This file can be used to display graphical results.<br>
- "load_plot_data.m": Use this file to visualize the field datasets on a map.<br>
- "visualFormat.p": This file configures the visualization settings.<br>

[5] Additionally, there are other folders such as "gravity" and "regularization", each containing files for computations.<br>
[6] Once configured, run the main program file "mainProgram.p".<br>
[7] The output of the program will be logged into the file "log.txt". The result of the basement undulation will be stored in "output.txt".<br>
<br>
Ensure that you have appropriate permissions to modify and execute these files. Adjust the file paths and parameters as needed for your specific dataset and analysis requirements.<br>
<br>
Any feedback will be invaluable for me, please send your comments to my correspondence email: acceph@yahoo.com<br>

## How to cite:<br>
Handyarso, A. and Grandis, H. 2017. Three-Dimensional Gravity Inverse Modeling for Basement Depth Estimation Integrating Maximum Difference Reduction (MDR), Trend Surface Analysis (TSA), and Total Variation Regularization (TVReg). Journal Engineering and Technological Sciencem 49(3), pp. 358-372. Doi: [10.5614/j.eng.technol.sci.2017.49.3.5](https://journals.itb.ac.id/index.php/jets/article/view/3535) <br>
