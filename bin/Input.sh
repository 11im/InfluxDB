#!/bin/bash
usage_files=(`ls /home/proj01/docker-influxdb-grafana/file/ | grep water_`)
quality_files=(`ls /home/proj01/docker-influxdb-grafana/file/ | grep waterQ_`)
usage_finished_path="/home/proj01/docker-influxdb-grafana/file/finished/usage/"
quality_finished_path="/home/proj01/docker-influxdb-grafana/file/finished/quality/"
target_path="/home/proj01/docker-influxdb-grafana/file/"
timestamp=`date +%Y%m%d%H%M`

if (( ${#usage_files[*]} > "0"))
then
    for file in "${usage_files[@]}"
        do
            finished_file="${usage_finished_path}${file}"
            target_file="${target_path}${file}"
            python /home/proj01/docker-influxdb-grafana/Input/src/Json_to_IFDB.py U "${target_file}" 
            mv "${target_file}" "${usage_finished_path}"
        done
fi

if (( ${#quality_files[@]} > "0"))
then
    for file in "${quality_files[@]}"
        do
            finished_file="${quality_finished_path}${file}"
            target_file="${target_path}${file}"
            python /home/proj01/docker-influxdb-grafana/Input/src/Json_to_IFDB.py Q "${target_file}" 
            mv "${target_file}" "${quality_finished_path}"
        done
fi