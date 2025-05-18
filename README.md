# 🌱 SoilScope: Simple Soil Moisture Assessment

## 📸 Overview

SoilScope is a simple yet effective MATLAB-based tool that analyzes the moisture content of soil from an image. By leveraging the HSV (Hue-Saturation-Value) color space, it determines whether the soil is dry, moderately moist, or wet—and provides actionable suggestions for irrigation.

## 🔍 How It Works
Input: Load a captured image of a soil sample.

Preprocessing: Resize and convert the image to grayscale for optional future use.

HSV Analysis: Extract the Saturation and Brightness (Value) channels from the HSV model.

Feature Extraction: Calculate the average saturation and brightness values.

Classification: Compare values against thresholds to determine:

🌵 Dry Soil – Needs watering.

🌿 Moderate Moisture – No immediate action needed.

💧 Wet Soil – Avoid overwatering.

Output: Displays the result and suggested action in the console and shows the original image.

## 📬 Future Improvements
Integrate with real-time camera feeds

Add region-based analysis

Use machine learning for smarter thresholding

