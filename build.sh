# Here is a make file to run after the site is 
# modified or changed in any way.

# Build the actual website content
jekyll build

# Compile the .scss into .css, add compression alter
compass compile
# Actually copy if over due to weird webfaction structure
cp -rf css ~/webapps/codelucas

