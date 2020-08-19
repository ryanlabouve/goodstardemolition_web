git branch -D gh-pages
git co -b gh-pages
JEKYLL_ENV=production bundle exec jekyll build
rm -rf $(ls | sort -u | grep -Ev '_site|deploy.sh')
mv _site/* .
git push origin gh-pages -f
git co master