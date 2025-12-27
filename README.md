# SQL Machine Downtime Analysis

## Overview
This mini project demonstrates how SQL can be used to analyze machine downtime events in a manufacturing environment.
The analysis focuses on calculating the time interval between consecutive machine breakdowns to better understand breakdown frequency.

## Objective
- Calculate time differences between breakdown events for each machine
- Identify machines with frequent breakdowns
- Support maintenance and process optimization decisions

## Analysis Result (Breakdown Intervals)
The following data represents the calculated difference (in minutes/hours) between breakdown events for each specific machine:

| machine_id | breakdown_diff |
| :--- | :--- |
| MC-001 | NULL |
| MC-001 | 120 |
| MC-001 | 150 |
| MC-002 | NULL |
| MC-002 | 465 |

## SQL Concepts Used
- Window functions
- LAG()
- PARTITION BY
- ORDER BY
- TIMESTAMPDIFF()

## Business Insight
Frequent machine breakdowns may indicate:
- Inappropriate process parameters (e.g., pressure settings, material thickness)
- Equipment wear or insufficient maintenance
- Process conditions that are not suitable for mass production

This analysis provides a starting point for deeper investigation such as:
- Root cause analysis
- Maintenance scheduling
- Process parameter optimization

## Notes
This project was created as part of self-study following the Alex The Analyst YouTube tutorial.
All SQL queries were written and understood independently as hands-on practice for data analysis.
