#!/bin/bash

trap "exit" SIGTERM

sleep infinity &
wait
