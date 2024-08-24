# big data project: Comparison of machine learning models for predicting results of soccer matches

## Project Overview:

Our project is focused on a comprehensive analysis of the predictive precision of various machine learning algorithms in forecasting the outcomes of football matches. By leveraging an extensive and diverse dataset that includes historical match information such as team statistics, player performances, weather conditions, and other relevant variables, we aim to conduct a thorough comparison of multiple algorithms.

## how to run 
* this project run **only in linux** , because the project used a bash shell file 
* **you need to install pyspark and kafka** in order you run the project
1. clone the project 
 ```bash
git clone [url of this repo]
```
2. download the data from the website kaggle in this <a href="https://www.kaggle.com/competitions/football-match-probability-prediction/data">link</a> , and save it with the folder of the project 
3. run the bash shell file with this command:
 ```bash
bash kafka.sh
```
4. linux will open two things : zookeeper server and pyspark , choose the “producer” notebook
5. run the notebook and go back to the pyspark menu
6. choose the “big_data_project” notebook
7. run the notebook
## tools we used in this project 

## KAFKA 
</p>
<div align="center">
 <img alt="kafka" height="200px" src="https://www.codefactorygroup.com/wp-content/uploads/2021/05/apache-kafka-1110x550.png">
</div>

* Apache Kafka is an open-source distributed event streaming platform used by thousands of companies for high-performance data pipelines, streaming analytics, data integration, and mission-critical applications.
* we used producer and consumer algorithms, to process the accuracy scores of the machine learning to a topic of “Football” .and a consumer to get those kafka messages to print into a graph that see the results .
* learn more about kafka and download in this  <a href="https://kafka.apache.org">link</a>

## PYSPARK (the python version of spark) 
</p>
<div align="center">
 <img alt="spark" height="200px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6s18b2Hr6gcvx1M2W5BKTxW8i5vkckfNzfg&s">
</div>

* Apache Spark™ is a multi-language engine for executing data engineering, data science, and machine learning on single-node machines or clusters.
* we use the ability of spark to data stream from the produces of kafka into out models
* in order to use this large database , we also use the functions of spark to Calculate results using the library's models and change the data according to what we needed
## how is the project data streaming looks?
<img src="https://i.imgur.com/UgyPfKW.jpeg" alt="results">


