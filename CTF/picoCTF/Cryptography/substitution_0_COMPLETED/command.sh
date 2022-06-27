#!/bin/bash

cat message.txt | tr EKSZJTMCXOQUDYLFABGPHNRVIWekszjtmcxoqudylfabgphneviw ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz | grep -aoE "picoCTF{.*?}" --color=none
