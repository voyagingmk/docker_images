pkill -f jekyll
cd ./github/blog/
jekyll -b
cd ../ 
/bin/cp -rf blog/_site/*  release/
cd ./release
git 
cd ../../
sh ./all.sh