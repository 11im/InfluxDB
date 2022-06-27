# coding: utf-8
import sys
import numpy as np
import pandas as pd
from datetime import datetime
from pandas.plotting import autocorrelation_plot
import statsmodels.api as sm
from pandas import DataFrame, datetime, json_normalize
from datetime import timedelta
import pprint
from influxdb import InfluxDBClient
from copy import deepcopy
import json
from collections import OrderedDict
from pandas import DataFrame as df

def read_json_usage(file_path):
    jp = open(file_path)
    df = json_normalize(json.load(jp)).drop_duplicates().reset_index(drop=True)

    df['stime'] = pd.to_datetime(pd.to_numeric(df['stime']), unit='s')
    df['mtime'] = pd.to_numeric(df['mtime'])
    df['gauge'] = pd.to_numeric(df['gauge'])
    df['gunit'] = pd.to_numeric(df['gunit'])

    return df

def read_json_quality(file_path):
    jp = open(file_path)
    df = json_normalize(json.load(jp)).drop_duplicates().reset_index(drop=True)

    df['mtime'] = pd.to_numeric(df['mtime'])
    df['chlorine'] = pd.to_numeric(df['chlorine'])
    df['ph'] = pd.to_numeric(df['ph'])
    df['temperature'] = pd.to_numeric(df['temperature'])
    df['turbidity'] = pd.to_numeric(df['turbidity'])

    return df


def get_ifdb(db, host='localhost', port='8086', user='root', passwd='root'):
    # DB Connection
    client = InfluxDBClient(host, port, user, passwd, db)
    try:
        # connection check
        client.create_database(db)
    except Exception as e:
        print('connection fail')
        print(e)
        pass
    return client

def write_data_usage(ifdb,df):
    json_body = []
    #Declare vars here
    tablename = 'water_usage'
    tag1 = 'did'
    tag2 = 'stime'
    field1 = 'gauge'
    field2 = 'gunit'

    point = {
        # initialize data
        "measurement": tablename,
        "tags": {
           tag1: "", 
           tag2: "",
        },
        "fields": {
            field1:0,
            field2:0
        },
        "time": None,
    }

    # insert data
    for t in range(len(df['did'])):
        np = deepcopy(point)  
        np['tags'][tag1] = df['did'][t]
        np['tags'][tag2] = df['stime'][t]
        np['fields'][field1] = df['gauge'][t]
        np['fields'][field2] = df['gunit'][t]

        # UTC timestamp
        np['time'] = df['mtime'][t]*1000000000

        json_body.append(np)

        # write data
        try:
                ifdb.write_points(json_body)
                del json_body[-1]
        except:
                del json_body[-1]
                continue

def write_data_quality(ifdb,df):
    json_body = []
    #Declare vars here
    tablename = 'water_quality'
    tag1 = 'did'
    tag2 = 'tid'
    field1 = 'chlorine'
    field2 = 'ph'
    field3 = 'turbidity'
    field4 = 'temperature'

    point = {
        # initialize data
        "measurement": tablename,
        "tags": {
           tag1: "", 
           tag2: "",
        },
        "fields": {
            field1:0,
            field2:0,
            field3:0,
            field4:0
        },
        "time": None,
    }

    # insert data
    for t in range(len(df['did'])):
        np = deepcopy(point)  
        np['tags'][tag1] = df['did'][t]
        np['tags'][tag2] = df['tid'][t]
        np['fields'][field1] = df['chlorine'][t]
        np['fields'][field2] = df['ph'][t]
        np['fields'][field3] = df['turbidity'][t]
        np['fields'][field4] = df['temperature'][t]

        # UTC timestamp
        np['time'] = df['mtime'][t]*1000000000

        json_body.append(np)

        # write data
        try:
            ifdb.write_points(json_body)
            del json_body[-1]
        except:
            del json_body[-1]
            continue

def main_func():
    ifdb = get_ifdb(db='water_management')
    flag = sys.argv[1]
    file_path = sys.argv[2]

    if flag == "U" :
        df = read_json_usage(file_path)
        write_data_usage(ifdb,df)

    elif flag == "Q":
        df = read_json_quality(file_path)
        write_data_quality(ifdb,df)

    else : print("wrong Arguments!")

if __name__ == '__main__':
    main_func()
