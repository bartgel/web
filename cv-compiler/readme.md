mvn exec:java -Dexec.mainClass="be.bart.cv.App"

while true
do
  watch -d -t -g ls -lR src/main/resources/* && mvn exec:java -Dexec.mainClass="be.bart.cv.App"
done

technology lover
bridge builder
clean coder
continous learner