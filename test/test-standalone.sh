#!/bin/sh

# Run smoke tests targeting a local JBoss EAP 6 launched with standalone.sh

../check_jbossas7.py -H 127.0.0.1 -A server_status -P 9990 -u jboss -p 00-testpwd
../check_jbossas7.py -H 127.0.0.1 -A gctime -P 9990 -u jboss -p 00-testpwd -m PS_MarkSweep
../check_jbossas7.py -H 127.0.0.1 -A heap_usage -P 9990 -u jboss -p 00-testpwd 
../check_jbossas7.py -H 127.0.0.1 -A non_heap_usage -P 9990 -u jboss -p 00-testpwd
../check_jbossas7.py -H 127.0.0.1 -A eden_space_usage -P 9990 -u jboss -p 00-testpwd -m PS_Eden_Space
../check_jbossas7.py -H 127.0.0.1 -A old_gen_usage -P 9990 -u jboss -p 00-testpwd -m PS_Old_Gen
../check_jbossas7.py -H 127.0.0.1 -A perm_gen_usage -P 9990 -u jboss -p 00-testpwd -m PS_Perm_Gen
../check_jbossas7.py -H 127.0.0.1 -A code_cache_usage -P 9990 -u jboss -p 00-testpwd -m Code_Cache
../check_jbossas7.py -H 127.0.0.1 -A datasource -P 9990 -u jboss -p 00-testpwd -d ExampleDS -s ActiveCount
#../check_jbossas7.py -H 127.0.0.1 -A xa_datasource -P 9990 -u jboss -p 00-testpwd -d ExampleDS -s ActiveCount
../check_jbossas7.py -H 127.0.0.1 -A threading -P 9990 -u jboss -p 00-testpwd -t thread-count
