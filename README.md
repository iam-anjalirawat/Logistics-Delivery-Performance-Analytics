# Logistics-Delivery-Performance-Analytics

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=power-bi&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## Executive Summary
Supply chain efficiency and last-mile delivery reliability directly impact customer retention and operational costs. This end-to-end data analytics project evaluates an extensive e-commerce logistics dataset ($\approx 50,000$ shipments) to uncover critical network bottlenecks, carrier failure rates, weather disruptions, and their downstream correlation with product return requests. 

The insights derived from **SQL querying** were synthesized into an interactive **Power BI Dashboard** designed for operations managers and logistics executives to track On-Time Delivery (OTD) KPIs dynamically.

---

## Key Business Questions & SQL Insights

The analysis extracts actionable intelligence across five core operational vectors[cite: 1]:

1. **Network-Wide OTD Rate & Volume:** Evaluates overall network throughput, tracking total volume against successful on-time vs. delayed fulfillments.
2. **Warehouse Bottlenecks:** Pinpoints specific fulfillment centers suffering from maximum average delay days and high late-shipment percentages.
3. **Carrier Reliability Analysis:** Ranks shipping carriers by shipment volume versus failure/delay rates to optimize vendor contracts.
4. **Weather Impact Assessment:** Quantifies how severe weather conditions disrupt normal transit operations and inflate transit times.
5. **Return Request Correlation:** Measures the definitive business cost of fulfillment failures by tying late deliveries directly to customer return request percentages.

All core analytical queries can be explored in the [sql/delivery_performance_analysis.sql](sql/delivery_performance_analysis.sql) script.

---

## Tech Stack & Tools
* **Database & Querying:** SQL (Aggregation, Conditional Logic via `CASE WHEN`, Grouping, Sorting)
* **Data Visualization & BI:** Power BI (Custom DAX measures, KPI cards, interactive cross-filtering)
* **Version Control:** Git & GitHub

---

## Power BI Dashboard Preview
*The interactive dashboard incorporates custom DAX measures to give stakeholders a real-time command center over logistics performance.*

> **Dashboard Highlights:**
> * **KPI Summary Cards:** Total Orders Handled, Overall OTD Percentage, Average Delay Days, and Total Returns.
> * **Geospatial & Warehouse Breakdown:** Visualizes delay hot-spots across warehouse locations and shipping cities.
> * **Carrier Scorecards:** Side-by-side comparison of carrier reliability and failure trends.

![Dashboard Preview](https://github.com/iam-anjalirawat/Logistics-Delivery-Performance-Analytics/blob/main/Dashboard-Screenshot.png)

---
*Created by [Anjali Rawat](https://github.com/iam-anjalirawat)*
