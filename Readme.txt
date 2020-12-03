
################## Random Phase, MC simulation in 2D systems ###############
			(Windows Version)


################### GNUPLOT INSTALLATION ###################################

The representation scripts use "gnuplot" program, which should be installed
and its installation folder added to the PATH.

To install gnuplot for windows, you can download it from
http://www.gnuplot.info/download.html


Important note:
The binary package for Windows  ***-mingw.7z can be extracted to a given
folder ( e. g., C:\your\new\path\here\ )
The installation folder you have defined (or that folder used by the
self-installer) must be added to the PATH.

Option 1. Search for information on the web on how to permanently change the
PATH variable in your computer (look for your specific Windows version).

Option 2. If you do not like to permanently change the PATH variable in your
computer, you can use an alternative.
Type the following command at the CMD TERMINAL when you begin to work in
that terminal session:  set PATH=%PATH%;C:\your\new\path\here\;


################### RUNNING THE PROGRAM	###################################

Once gnuplot is installed and its folder added to the PATH (see the former
section on gnuplot installation), you are ready to run the first simulation.

To run the simulation, you must open a CMD TERMINAL in the folder WHERE THE
MC PROGRAM IS INSTALLED (we will call it the "working directory") and type:

MC-WIN.bat  input_file  output_KEY

The MC folder should contain the input_file  (e. g. "in.txt").
Note that you should give the complete input file with its extension but
without quotation marks.
The structure of the input file is explained in the Manual.

The output directory "output_KEY" is then created by the program and the
results of the simulation will be stored in that folder (see the Manual
for more details).

Some examples of input files are provided in the "/examples" folder.
To check if the program is correctly runnig, the results corresponding
to these examples are also in the folder.


################## VISUALIZATION OF THE RESULTS #############################

In order visualize the results, we provide some representation scripts in
the folder "/gnuplot".

From the CMD TERMINAL in the working directory (i.e. where the MC program
is installed) you must type:

GNU.bat  Keyword  'output_directory' number_of_particles_simulated

**IMPORTANT** output_directory should be between simple quotes: 'output_directory'
Example: Chosen output_KEY=TEST and using the "in.txt" given in the distribution, 
to plot the rdf function, it should be typed:

GNU.bat  rdf  'TEST-200-0.01-55-200' 200

The "Keyword" refers to any of the presentation functions included in the
folder "/gnuplot", as distributed with the program.
They are (see the Manual for more information about them):

* Keyword = density  (Local Density Distribution)
The mean local density distribution obtained in the simulation, centered
at the particles position.

* Keyword = energy  (Mean Particle Energy Evolution)
The evolution of the mean potential energy per particle is computed at
every certain steps.

* Keyword = rdf  (Radial Distribution Function, RDF)
The RDF measures the probability of finding another particle at a certain
distance from a given particle.
It is normalized so the unit value is the probability for a non-interacting
system.

* Keyword = distribution  (2D Distribution Function)
It is the equivalent to the RDF, but taking into account not only the
distance between particles but also the direction of the relative vector
between them.

* Keyword = orientation  (Orientational Parameter Evolution)
This parameter is computed at every certain number of steps.
It takes a value of 1 for a perfect 2D crystal with hexagonal symmetry,
and becomes close to 0 for a system with no defined orientation.

* Keyword = orientation-corr   (Orientational Correlation Function)
This property measures the spatial correlation of the orientational
parameter.
It takes a value of 1 for strongly correlated orientations and 0 for
non-correlated orientations at a certain distance.

* Keyword = spec-heat   (Specific Heat Evolution)
The specific heat is computed at every certain number of steps.

* Keyword = dynamic  (Configuration Evolution)
The positions of the particles are printed at every certain number of steps.
In order to visualize the evolution of the different configurations,
an animation is shown.

* Keyword = dynamic-or  (Configuration Evolution 2)
The positions and orientations of the particles are printed at every
certain number of steps.
In order to visualize the evolution of the different configurations,
taking into account their orientation, an animation is shown.


############# MEMORY REQUIREMENTS ########################################

The default memory assignation is 300 MB per processor.
This value is enough for simulations up to aprox 10000 particles.

It can be also changed by editing the file "MC-WIN.bat" and setting the
variable"Bytes" in this file.
Note that this change may lead to some problems during the execution.

###########################################################################
