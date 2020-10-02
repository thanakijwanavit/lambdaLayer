for dir in */; do
  file_count=$(find $dir -name lambdaLayer.sh | wc -l)
  if [[ $file_count -gt 0 ]]; then
    cd $dir
    sh ./lambdaLayer.sh
    cd ..
  fi
done
