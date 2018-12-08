#!/bin/bash
#name=linux
#echo "Hello $name World!"
#echo ls -l some-non-existingfile.txt
#for i in $( ls ); do
# echo item: $i
#done
echo "--->> $(date '+%Y %b %d %H:%M:%S') :: Execution of JAR file begins"
command spark-submit --queue default  --class pradhan.com.spark.SparkSQLSample target/SparkSQLSample-0.0.1-SNAPSHOT-jar-with-dependencies.jar 2>>spark-maven-log.txt;
echo "--->> $(date '+%Y %b %d %H:%M:%S') :: Execution of JAR file ends"
echo
echo
echo "------------------------------------------------------------------------------------------------------------------------------"
echo "Assignment #1: Top 10 requested urls"
echo "------------------------------------------------------------------------------------------------------------------------------"
echo 
echo "URL  count"
echo "________________________________________________________"
command hdfs dfs -cat SparkProjectSQLmaven/Problem1/part-00000;
#echo
#echo "------------------------------------------------------------------------------------------------------------------------------"
#echo "Assignment #2: Top 5 timeframes for high traffic"
#echo "------------------------------------------------------------------------------------------------------------------------------"
#echo 
#echo "Host - count"
#echo "________________________________________________________"
#command hdfs dfs -cat SparkProjectSQLmaven/Problem2/part-00000;
echo
echo
echo "------------------------------------------------------------------------------------------------------------------------------"
echo "Assignment #2: Top 5 timeframes for high traffic"
echo "------------------------------------------------------------------------------------------------------------------------------"
echo 
echo "timeFrame  req_cnt"
echo "________________________________________________________"
command hdfs dfs -cat SparkProjectSQLmaven/Problem3/part-00000;
echo
echo
echo "------------------------------------------------------------------------------------------------------------------------------"
echo "Assignment #3: Top 5 timeframe for least traffic"
echo "------------------------------------------------------------------------------------------------------------------------------"
echo 
echo "timeframe  req_cnt"
echo "________________________________________________________"
command hdfs dfs -cat SparkProjectSQLmaven/Problem4/part-00000;
echo
echo
echo "------------------------------------------------------------------------------------------------------------------------------"
echo "Assignment #4: Unique HTTP codes returned by the server along with count "
echo "------------------------------------------------------------------------------------------------------------------------------"
echo 
echo "HTTP code  count"
echo "________________________________________________________"
command hdfs dfs -cat SparkProjectSQLmaven/Problem5/part-00000;
