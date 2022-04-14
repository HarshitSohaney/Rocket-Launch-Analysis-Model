# Rocket-Launch-Analysis-Model
A basic Rocket Launch Model created for the purposes of demonstrating basic MATLAB computing.

## Problem Statement

This project aims to model the equation on the Saturn V rocket launched in 1969. We will be finding 2-D plots for acceleration, speed and distance against time. Additionally, we will find the final velocity of the rocket and if that velocity is more than the escape velocity of earth – 11. 19 km/s.

## Model
Rockets consist mainly of fuel, and the Saturn V was no exception. This fuel is constantly burned out as the rocket attempts its ascent into space. Since the mass drastically affects the velocity, we have to use an equation to find the change in mass instantaneously for each time interval. We will be assuming that the fuel consumption rate is constant and the mass of the rocket varies over time.

Once we have the instantaneous mass, we can find the speed of the rocket as a function of time. The derivation of the ideal rocket equation involves using basic formula of momentum.. We will be assuming the rocket launches in a straight path at 𝜃 = 0° .

Values used for the constants are as follows: 
<p align = "center">
  <img src = "https://user-images.githubusercontent.com/73911621/148831908-5b41077c-b593-4654-a96e-2dfda1ef4a85.png" width = 500>
 </p>


In the MATLAB code, the time starts from 6.5 seconds the rocket launches with a delay. To compensate for that, all equations having the variable t have been subtracted with
6.5 to get accurate values.

## Results
<p align = "center">
<img src = "https://user-images.githubusercontent.com/73911621/148830726-87f153f6-fef5-492d-a1c0-00cb96f4dcc7.png" width = 650>
  <img src = "https://user-images.githubusercontent.com/73911621/148830754-738a569f-26bf-413a-a530-1a74c7ae8b82.png" width = 650>
  <img src = "https://user-images.githubusercontent.com/73911621/148830763-30e3f0bc-e055-41d6-bdf9-fdec9e40d796.png" width = 650>
</p>

Final Velocity Achieved: 12.557 km/s > 11.1176 km/s  
Actual Value recorded: 11.34 km/s (difference arises due to my assumption of no atmospheric drag)

## References

[1] "Page 5, Saturn V, Data, Stage 1 Calculation", Mnealon.eosc.edu, 2020. [Online]. Available: http://www.mnealon.eosc.edu/RocketSciencePage5.htm. [Accessed: 07- Dec- 2020].  
[2]"NASA - Saturn V Third Stage", Nasa.gov, 2020. [Online]. Available: https://www.nasa.gov/centers/johnson/rocketpark/saturn_v_third_stage.html. [Accessed: 08- Dec- 2020].
