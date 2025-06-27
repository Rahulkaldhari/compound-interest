#!/bin/bash

echo "Compound Interest Calculator"

# Read user input
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (% per year): " rate
read -p "Enter Time (in years): " time

# Calculate compound interest using bc
amount=$(echo "scale=2; $principal * (1 + $rate / 100)^$time" | bc -l)
interest=$(echo "scale=2; $amount - $principal" | bc -l)

echo "Compound Interest is: ₹$interest"
echo "Total Amount after $time years: ₹$amount"
