#!/bin/bash

xterm -hold -e "rails server; bash" &
xdg-open http://localhost:3000
