pkill -f jekyll
cd ./github/blog/
jekyll -b
cd ../ 
/bin/cp -rf blog/_site/*  release/
cd ./release
git add *
git commit -m "auto upload"
git push
cd ../../
sh ./all.sh