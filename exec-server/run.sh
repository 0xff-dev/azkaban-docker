#!/bin/bash
#!/bin/bash
./bin/start-exec.sh;

portFile="executor.port"
for i in {1..10}
do
  if [ -f "${portFile}" ]; then
    echo "try ${i}, ${portFile} exists!!!";
    break;
  else
    echo "${portFile} not exists!!!";
  fi
  sleep 1;
done

curl -G "localhost:$(<./executor.port)/executor?action=activate" && echo;
tail -f logs/azkaban-execserver.log;
