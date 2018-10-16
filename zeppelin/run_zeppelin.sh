docker run -d --rm -p 7575:8080 -v $PWD/zeppelin:/notebook -e ZEPPELIN_NOTEBOOK_DIR='/notebook' --name zeppelin crscardellino/zeppelin:0.8.0
