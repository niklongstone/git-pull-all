set -x
output=$(git branch | sed -e 's/\*/ /g')

while read -r branch; do
    git checkout "$branch"  
    git pull                
done <<< "$output"
