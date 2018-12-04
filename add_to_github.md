## Add package to GitHub

There are different ways of doing this. You may find some don't work - in which case try the others!

### Using RStudio and a bit of the command line.

1. When making your R package make sure the "Create a Git Repository" tab is checked.
2. When your package is open in RStudio, you should see the "Git" tab in the top right.
3. Use the Git tab to add and commit your package files.
4. Create a new repository on GitHub with same name.
   Importantly - do not add a README or anything just yet - the repo needs to be empty at this point.
5. Open the command line (e.g. git bash) 
   You can do this by opening it from your start menu, or 
   in RStudio click Tools->Shell to open a terminal/command prompt that is automatically in the directory of the R package
6. Connect the package with the GitHub repository type:
    "git remote add origin https://github.com/yourusername/PackageName.git"
7. Then type "git push -u origin master" to push everything
8. You can push/pull future changes using the Git tab in RStudio.


*OR* you can do it in the following sequence:

1. When making your R package make sure the "Create a Git Repository" tab is checked.
2. When your package is open in RStudio, you should see the "Git" tab in the top right.
3. Open the command line (e.g. git bash) 
   You can do this by opening it from your start menu, or 
   in RStudio click Tools->Shell to open a terminal/command prompt that is automatically in the directory of the R package
4. Go to the package directory (use cd ...)
5. Initialize the repository - type "git init"
6. Add and commit everything - type "git add -A" and then "git commit"
7. Create a new repository on GitHub with same name.
   Importantly - do not add a README or anything just yet - the repo needs to be empty at this point.
8. Connect the package with the GitHub repository type:
    "git remote add origin https://github.com/yourusername/PackageName.git"
9. Then type "git push -u origin master" to push everything
10. Repeat the git add, git commit, git  push each  time you want to add things (you don't have to do the origin master bit each time).



###  Drag and drop

1. Create repository on GitHub
2. Copy over all your project files to GitHub using the "upload files" tab
3. Note - if you have very large files this many not work.
4. I don't recommend this - but it can work.



