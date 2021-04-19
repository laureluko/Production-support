#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Apr 18 11:30:31 2021

@author: laureluko
"""
# Laurel Uko 4.18.2021

size = ["small","medium","large"]
small = 2
medium = 3
large = 4

coffee_type = ["brewed","espresso","cold brew"]
brewed = 0
espresso = .50
cold_brew = 1

coffee_flavor = ["hazlenut","vanilla","caramel"]
hazelnut = .50
vanilla = .50
caramel = .50

total = small + espresso + vanilla
tip = .45
total_with_tip = small + espresso + vanilla + tip

print("Hello, welcome to the Luxe Coffee Shop.")
print("What size coffee would you like?");print("Do you want small, medium, or large?")
size = input("Enter the size you would like:")
print("Do you want brewed, espresso or cold press?")
coffee_type = input("Enter your coffee type:")

print("Do you want a flavored syrup?")
answer = input("Enter yes or no:")

print("Do you want. hazelnut, vanilla or caramel?")

coffee_flavor = input("Enter the syrup you would like:")

print("You asked for a small cup of espresso coffee with vanilla syup")
print("Your cup of coffee costs");print(total)
print("Your total with the tip is");print(total_with_tip)