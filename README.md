# COVID-19 Country-wise Analysis Dashboard

## Description
This project demonstrates a **COVID-19 exploratory data analysis** using **SQL** and a **Power BI dashboard**.  
It includes top country analyses, global totals, WHO region summaries, and interactive visualizations.

---

## Dataset
- **File:** `CovidCountryWise.csv`  
- **Columns:**
  - Country/Region
  - WHO Region
  - Confirmed
  - Deaths
  - Recovered
  - Active
  - New cases
  - New deaths
  - New recovered  

---

## SQL Queries
The SQL part performs the following analyses:

1. Preview dataset (full and top 10 rows)  
2. Top 10 countries by **Confirmed cases**  
3. Top 10 countries by **Deaths**  
4. **Global totals**: Confirmed, Deaths, Recovered, Active  
5. Top 10 countries by **Recovery Rate (%)**  
6. Top 10 countries by **Mortality Rate (%)**  
7. Top 10 countries by **Active case %**  
8. Countries with **zero deaths**  
9. **WHO Region totals**  
10. WHO Region **averages** of new cases, deaths, recovered  
11. Death-to-Recovery ratio per country  
12. Global **New Cases % vs Total Confirmed**  

**SQL File:** `CovidCountryWise_Analysis.sql`  

---

## Power BI Dashboard
The Power BI dashboard (`Covid19_Dashboard.pbix`) visualizes the SQL results with the following visuals:  

### 🔹 **Cards (KPI)**
- **Card 1** → Total Deaths  
- **Card 2** → Total Confirmed  
- **Card 3** → Total Recovered  

### 🔹 **Gauge**
- **Gauge Visual** → Shows **New Deaths**  

### 🔹 **Map**
- **Location** → Country/Region  
- **Bubble Size** → Deaths  
- **Filter** → Top 20 countries by Deaths  

### 🔹 **Donut Chart**
- **Legend** → WHO Region  
- **Value** → Deaths  
- **Filter** → Top 5 WHO Regions by Deaths  

### 🔹 **Stacked Bar Chart**
- **Y-Axis** → Country/Region  
- **X-Axis** → Deaths & Active Cases  

### 🔹 **Stacked Column Chart**
- **X-Axis** → Country/Region  
- **Y-Axis** → Deaths & Active Cases  

---

## 📊 Key Insights
- The **top 20 countries** account for the majority of global deaths.  
- Some **WHO regions** show significantly higher death counts than others, with the **top 5 regions** dominating global impact.  
- **Deaths and active cases** are closely correlated in many high-case countries.  
- New deaths continue to rise globally, highlighted in the **gauge visual**.  

---

---

## How to Use
1. Open the SQL file in your SQL environment to explore the dataset.  
2. Open the `.pbix` file in **Power BI Desktop** to view interactive visualizations.  
3. Interact with visuals:  
   - Hover over the **map** to see details per country  
   - Filter WHO regions in the **donut chart**  
   - Compare **deaths vs active cases** in stacked charts  

---

## Notes
- Dataset is fictional / anonymized for portfolio purposes.  
- Dashboard is built using **Power BI Desktop (no date column in dataset)**.  
