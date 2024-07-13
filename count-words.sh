# file_name="your_file.txt"

# # Check if the file exists
# if [ ! -f "$file_name" ]; then
#     echo "File '$file_name' not found."
#     exit 1
# fi

# # Read the file, normalize text to lowercase, remove punctuation, and count occurrences
# word_count=$(tr -s '[:space:]' '\n' < "$file_name" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]' | grep -v '^$' | sort | uniq -c | sort -nr)

# # Display the top 5 most frequent words
# echo "Top 5 Most Frequent Words:"
# echo "$word_count" | head -n 5 | awk '{print $2 " - " $1 " occurrences"}'



# path to the file
file_path="/home/ec2-user/k8-resources/01-namespace.yaml"

# using wc command to count number of lines
number_of_lines=`wc --lines < $file_path`

# using wc command to count number of words
number_of_words=`wc --word < $file_path`

# Displaying number of lines and number of words
echo "Number of lines: $number_of_lines"
echo "Number of words: $number_of_words"
