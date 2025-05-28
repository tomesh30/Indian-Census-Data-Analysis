#  Indian Census SQL Analysis Project

This project explores the Indian Census data using SQL to derive meaningful insights such as literacy rate, population growth, sex ratio, and more — all at a state and district level.

---

##  Data Source

- [District Census 2011](https://www.census2011.co.in/district.php)
- [Literacy in India](https://www.census2011.co.in/literacy.php)

---

##  Files in This Repo

| File                | Description |
|---------------------|-------------|
| `Dataset1.xlsx`     | Contains district-wise literacy, sex ratio, and growth |
| `Dataset2.xlsx`     | Contains district-wise population and area |
| `analysis_queries.sql` | Main SQL queries analyzing trends, rankings, and relationships |
| `basic_queries.sql` | Simple SQL queries for learning or beginner use |
| `README.md`         | Project documentation and usage details |

---

##  Analysis Performed

- State-wise **average literacy rate**, **sex ratio**, **growth**
- Top and bottom 3 states in:
  - Literacy
  - Growth rate
  - Sex ratio
- District-wise **male and female estimation**
- **Literate vs illiterate** population estimation
- **Previous census population** estimation based on growth rate
- **Population vs area** density ratios
- **Top 3 literate districts** per state using window functions
- Usage of **CTEs**, **window functions**, **joins**, **temp tables**, and **aggregation**

---

##  How to Use

You can import the datasets into a SQL environment (like SSMS, MySQL Workbench, or SQLiteStudio) and run the queries from `analysis_queries.sql` step-by-step.

---

##  Sample Query (Window Function)

```sql
SELECT district, state, literacy,
  RANK() OVER (PARTITION BY state ORDER BY literacy DESC) AS rnk
FROM project..data1
WHERE rnk <= 3;


Output :- This gives you the top 3 literate districts from each state.
