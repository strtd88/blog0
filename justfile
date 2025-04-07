local_src_dir := '/Users/startdate/Projects/StartDate2/blog0/blog000'

# Default target
default: # show-easytimestamp
  @just --list

# Get the current date and time in ISO format
current_datetime := `date -Iseconds`
# Get the current date in YYYY-MM-DD format
current_date := `date -I`
# Get the current time in HH:MM:SS format
current_time := `date +%T`
# Get the easy_time_stamp
easytimestamp := current_date + '_' + current_time

# Example usage:
show-datetime:
        @echo "Current datetime: {{current_datetime}}"
show-easytime: 
        @echo "Current easytimestamp: {{easytimestamp}}"
publish message: 
  git add .
  git commit -m "Commiting at {{easytimestamp}} with the message: {{message}}"
  git push

#
show_local_src_dir: 
  @echo "The source directory for building the blog:  {{local_src_dir}}"

goto-src-dir:
  cd {{local_src_dir}} 
