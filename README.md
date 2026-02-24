# BD Smart City Detector for Google Tag Manager

Technical documentation for the BD Smart City Detector variable template.

## Overview

BD Smart City Detector is a high-performance utility for Google Tag Manager (GTM) designed to extract standardized District/City names from address strings within Bangladesh. The template supports bilingual inputs (English and Bengali), ensuring consistent data collection for localized e-commerce operations.

## Use Cases

- **Logistics Integration:** Automate shipping cost calculations within GTM based on the identified district.
- **Marketing Compliance:** Provide standardized City data to Meta Pixel and GA4 to improve Event Match Quality (EMQ).
- **Regional Analytics:** Generate granular reports on regional sales performance across the 64 districts of Bangladesh.

## Features

- **Bilingual Recognition:** Supports both English (e.g., `Dhaka`) and Bengali (e.g., `ঢাকা`) character sets.
- **Standardized Output:** Normalizes various input formats into a single English district name for consistency across reporting platforms.
- **Comprehensive Coverage:** Includes mapping for all 64 administrative districts of Bangladesh.
- **Performance Optimized:** Executed as a lightweight sandboxed JavaScript function to ensure zero impact on page load times.

## Configuration Instructions

1. **Import:** Add the `template.tpl` file to your GTM container templates.
2. **Setup:** Create a new GTM variable using the "BD Smart City Detector" template.
3. **Input Configuration:** Select the Data Layer variable that contains the full address string.
4. **Output:** The variable will return the standardized English name of the detected district.

## Validation Examples

| Input Address String | Resulting Output |
| :--- | :--- |
| "House 12, Road 5, Dhanmondi, Dhaka" | `Dhaka` |
| "চাপাইনবাবগঞ্জ সদর" | `Chapainawabganj` |
| "Pabna Sadar, Pabna" | `Pabna` |

## Technical Support and Attribution

Developed and maintained by **Md Sadikul Islam Shadin**.

For more advanced tracking solutions, visit the [Tracking with Shadin](https://github.com/trackingwithshadin) portal.
