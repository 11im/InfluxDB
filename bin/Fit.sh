#!/bin/bash

day=`date +%d`
hour=`date +%H`

if [ $day -eq 1 ] || [ $day -eq 16 ]
then
    if [ $hour -eq 0 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 0
    fi

    elif [ $hour -eq 2 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 1
    fi

    elif [ $hour -eq 4 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 2
    fi

    else
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 3
    fi

fi

if [ $day -eq 2 ] || [ $day -eq 17 ]
then
    if [ $hour -eq 0 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 4
    fi

    elif [ $hour -eq 2 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 5
    fi

    elif [ $hour -eq 4 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 6
    fi

    else
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 7
    fi
    
fi

if [ $day -eq 3 ] || [ $day -eq 18 ]
then
    if [ $hour -eq 0 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 8
    fi

    elif [ $hour -eq 2 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 9
    fi

    elif [ $hour -eq 4 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 10
    fi

    else
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 11
    fi
    
fi

if [ $day -eq 4 ] || [ $day -eq 19 ]
then
    if [ $hour -eq 0 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 12
    fi

    elif [ $hour -eq 2 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 13
    fi

    elif [ $hour -eq 4 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 14
    fi

    else
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 15
    fi
    
fi

if [ $day -eq 5 ] || [ $day -eq 20 ]
then
    if [ $hour -eq 0 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 16
    fi

    elif [ $hour -eq 2 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 17
    fi

    elif [ $hour -eq 4 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 18
    fi

    else
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 19
    fi
    
fi

if [ $day -eq 6 ] || [ $day -eq 21 ]
then
    if [ $hour -eq 0 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 20
    fi

    elif [ $hour -eq 2 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 21
    fi

    elif [ $hour -eq 4 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 22
    fi

    else
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 23
    fi
    
fi

if [ $day -eq 7 ] || [ $day -eq 22 ]
then
    if [ $hour -eq 0 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 24
    fi

    elif [ $hour -eq 2 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 25
    fi

    elif [ $hour -eq 4 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 26
    fi

    else
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 27
    fi
    
fi

if [ $day -eq 8 ] || [ $day -eq 23 ]
then
    if [ $hour -eq 0 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 28
    fi

    elif [ $hour -eq 2 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 29
    fi

    elif [ $hour -eq 4 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 30
    fi

    elif [ $hour -eq 6 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 31
    fi
    
    else
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 32
    fi
    
fi

if [ $day -eq 9 ] || [ $day -eq 24 ]
then
    if [ $hour -eq 0 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 33
    fi

    elif [ $hour -eq 2 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 34
    fi

    elif [ $hour -eq 4 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 35
    fi

    elif [ $hour -eq 6 ]
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 36
    fi

    else
    then
        python3 /home/proj01/docker-influxdb-grafana/Input/Usage_Model.py F 37
    fi
    
fi
