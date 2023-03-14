# ARCHY 488 Lithic Technology Lab

Canvas site for the course: [https://canvas.uw.edu/courses/1629611](https://canvas.uw.edu/courses/1632617)

This repository contains a Dockerfile that UW-IT use to provide RStudio on JupyterHub for the class. I update the Dockerfile to provide a custom set of R packages to the class so they don't have to install anything. The browser-based instance of RStudio for the class is freely accessible to registered students here: https://jupyter.rttl.uw.edu/ (UW ID log in required, file storage is attached to your UW ID and persists through the quarter)

You can also click on this button to write code in your web browser (no log in required, file changes do not persist beyond the current session): [![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/benmarwick/ARCHY-488-Lithic-Technology-Lab/master?urlpath=rstudio)

To make this work for UW-IT, I activate 'Actions' in 'Settings', then trigger a run, e.g. by updating the README, which builds a package hosted on GitHub's container registery. I send the URL of the package to UW-IT. 

