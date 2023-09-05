#!/bin/bash

pdftotext 1988challenge0.pdf - | grep "FLAG{.*}"
