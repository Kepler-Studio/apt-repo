#!/bin/bash

# Remove all old packages
reprepro -V removefilter rolling 'Section'

# Add new packages
reprepro --ignore=forbiddenchar -S main -P extra includedeb rolling ../debs-all/*.deb
