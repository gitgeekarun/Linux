### find files by file type and size
  ## find .log files <3k within current directory
    find . -name "*.log" -size -3k
  ## find .log files >3k within current directory
    find . -name "*.log" -size +3k
