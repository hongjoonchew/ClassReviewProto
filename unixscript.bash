#!/bin/bash

$TERM -e "rails server; bash" &
xdg-open http://localhost:3000
