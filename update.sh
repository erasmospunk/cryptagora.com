#git commit -a --amend

rm -rf _site
jekyll build
git checkout gh-pages
#rm -rf img/*
mv _site/img/* img/
mv _site/css/main.css css/
mv _site/index.html ./
mv _site/favicon.ico ./

git commit -am "update"
git push
git checkout master
