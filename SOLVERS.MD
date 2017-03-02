Install GCC/G++ 4.9
---------------
sudo apt-get install gcc-4.9
sudo mv /usr/bin/gcc /usr/bin/gcc-5.4
sudo mv /usr/bin/gcc-4.9 /usr/bin/gcc

sudo apt-get install g++-4.9
sudo mv /usr/bin/g++ /usr/bin/g++-5.4
sudo mv /usr/bin/g++-4.9 /usr/bin/g++

MOSEK
-----

1) Download MOSEK as an archive from https://mosek.com/resources/downloads and save to /opt/. 
2) Apply for a licence at: https://mosek.com/resources/trial-license
3) You will receive an email containing your "mosek.lic" file. On Linux, place this in:
/home/<userid>/mosek/mosek.lic
4) Navigate to the directory where the tar.bz2 was downloaded (/opt/) and enter in a shell to extract the archive:
tar xvjf <filename>.tar.bz2
5) In the MATLAB command window, enter: 
pathtool
6) Click "Add with Subfolders..." and select the directory where Mosek was extracted.

tomlab_snopt and tomlab_cplex
------------
1) Download TOMLAB /SNOPT and TOMLAB /CPLEX from http://tomopt.com/scripts/register.php
2) In a terminal window, navigate to the download directory of tomlab and do the following:
chmod +x <filename>.bin
sudo ./<filename>.bin
3) Follow the installation instructions
4) Place tomlab.lic and tomlab.dat in the root directory of tomlab (e.g.: /opt/tomlab)
5) In the MATLAB command window, enter: 
pathtool
6) Click "Add with Subfolders..." and select the directory where Mosek was extracted.


OPTI Toolbox %% INCOMPLETE
------------
1) In a shell, navigate to /opt/
2) Enter and hit return: 
git clone https://github.com/jonathancurrie/OPTI.git
3) In MATLAB, navigate to /opt/OPTI/




Troubleshooting:
----------------

*) Problem:
-----------
 No apport report written because the error message indicates its a followup error from a previous failure.
                          Errors were encountered while processing:
 runit
 git-daemon-run
E: Sub-process /usr/bin/dpkg returned an error code (1)

Solution:
sudo apt-get purge runit
sudo apt-get purge git-all
sudo apt-get purge git
sudo apt-get autoremove
sudo apt update
sudo apt install git


