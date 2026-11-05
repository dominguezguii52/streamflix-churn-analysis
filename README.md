📺 StreamFlix: Subscriber Churn Analysis

> ⚠️ Practice project using **simulated data** from a fictional streaming platform.

## 🎯 Business Problem
StreamFlix is losing subscribers. This project aims to answer:
**Who is canceling, and why?**

## 📊 Data
- 600 subscribers with plan, age, province, device, weekly viewing hours, tenure, and cancellation reason.
- Plans table with monthly price, number of screens, and video quality.

## 🔧 Process
1. Data cleaning in Power Query: translated columns and values to English and checked data types.
2. Data modeling: relationship between the Subscribers and Plans tables.
3. DAX measures: Total Users, Cancellations, Churn Rate, and Monthly Revenue Lost.
4. Visual analysis: churn by plan, device, cancellation reason, and viewing hours.

## 🖼️ Dashboard
![StreamFlix Churn Dashboard] (dashboard.png)

## 💡 Key Insights
1. **Overall churn is high:** 44% of subscribers (265 out of 600) canceled their subscription.
2. **The Basic plan drives churn:** 61% of Basic subscribers canceled, more than 3 times the rate of Premium (18.5%), a 42.5 percentage point gap.
3. **Price is the main reason:** "Price" is the most common cancellation reason, consistent with the high churn on the cheapest plan.
4. **Mobile users churn more:** 49.8% of mobile users canceled, compared to 35.9% of computer users. *Hypothesis:* this may be linked to income level, but income data would be needed to confirm it.
5. **Low engagement predicts churn:** users who canceled watched 4.7 hours per week on average, half as much as active users (9.3 hours).
6. **Business impact:** churned subscribers represent ARS 2.39M in lost monthly revenue.

## ✅ Recommendations
1. **Review Basic plan pricing:** test a discount or an annual payment option to retain price-sensitive users.
2. **Re-engage low-usage users:** send personalized recommendations to subscribers watching under 5 hours per week before they cancel.
3. **Improve the mobile experience:** investigate why mobile users churn more (app performance, content format).
4. **Next step:** build a predictive model to identify subscribers at risk of canceling.

## 🛠️ Tools
Power BI · DAX · Power Query · Excel
