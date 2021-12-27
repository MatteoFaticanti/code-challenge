## Exercise 1

The file replace.sh contain only a single command to do the job.  
find will search every file recurisively in the directory specified as a parameter and for every file sed is executed to substitute the string that match $1 with $2.

```
find $3 -type f -exec sed -i "s/$1/$2/g" {} +
```
