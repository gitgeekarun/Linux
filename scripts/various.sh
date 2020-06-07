///(1) find files by file type and size
  // find .log files <3k within current directory
    find . -name "*.log" -size -3k
    
  // find .log files >3k within current directory
    find . -name "*.log" -size +3k
+-----------------------------------------------------------------+
///(2) removing all the files in a directory by file extention
  // more simple way (removing all .log files in current directory)
    ls | grep ".log" | xargs rm {}
    
  // more programmatic way (but execution time is slightly higher compared to traditional way, but more control over the var)
    for var in $(ls | grep ".rtf"); do rm $var; done;
    
  // check whether the folder has any contents, if yes then search for file with extention .log and remove those files
    #!/bin/bash
    DIR="/some_dir/test_dir/"
    if [ "$(ls -A $DIR)" ]
        then
                for var in $(ls $DIR | grep ".log"); do rm -f $var; done;
    else
        echo "empty directory"
    fi
+-----------------------------------------------------------------+
///(3) Getting contents using {After(A) line and Before(B) line}
  // get interface "en0" inet address from ifconfig and ping to that IP.
    ifconfig | grep -A 1 en0 | grep "\binet\b" | awk '{print $2}' | xargs ping {}
    
  // 
    
