# Here is a make file to run after the site is 
# modified or changed in any way.

# Build the actual website content
jekyll build

# Run this compile if we are publishing, css is compressed
if [ "$1" = "publish" ]
then
    rm ~/codelucas_dev/css/compiled/*.css
    compass compile --output-style compressed
    echo "css has been compiled and compressed"
else
    # Run this compile for editing, not compressed
    compass compile
fi

# Actually copy if over due to weird webfaction structure
cp -r css ~/webapps/codelucas

