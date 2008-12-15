#!/bin/sh 

svn ls https://source.sakaiproject.org/svn/ | while read project
do
 echo $project
 mkdir $project
 cd $project
 git svn init -t tags -b branches -T trunk https://source.sakaiproject.org/svn/$project
 git svn fetch
 cd ..
done
