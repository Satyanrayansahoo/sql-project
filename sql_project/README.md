# 🎓 Student Database — SQL Project

A beginner-friendly SQL project demonstrating `SELECT`, `WHERE`, `GROUP BY`, and `ORDER BY` on a simple Students table.

---

## 📁 Project Structure

```
sql-project/
├── schema.sql   ← Creates the database and table
├── data.sql     ← Inserts sample student records
├── queries.sql  ← All practice queries
└── README.md    ← You are here
```

---

## 🚀 How to Run (MySQL Workbench)

Run the files **in this exact order**:

### Step 1 — Create the table
1. Open MySQL Workbench and connect to your local server.
2. Click **File → Open SQL Script** and select `schema.sql`.
3. Press **Ctrl+Shift+Enter** (Run All) or click the ⚡ button.
4. You should see `student_db` appear in the left panel under **Schemas**.

### Step 2 — Insert sample data
1. Open `data.sql` the same way.
2. Run it. This inserts 8 student records.

### Step 3 — Run the queries
1. Open `queries.sql`.
2. To run **one query at a time**: place your cursor inside the query and press **Ctrl+Enter**.
3. To run **all queries**: press **Ctrl+Shift+Enter**.

---

## 🖥️ How to Run (VS Code + MySQL extension)

1. Install the **MySQL** extension by cweijan from the VS Code marketplace.
2. Add a new connection (host: `localhost`, user: `root`, your password).
3. Open each `.sql` file, right-click → **Run MySQL Query**.

---

## 💻 How to Run (Command Line)

```bash
# Log into MySQL
mysql -u root -p

# Then run each file
source /full/path/to/schema.sql
source /full/path/to/data.sql
source /full/path/to/queries.sql
```

---

## 📊 Expected Query Outputs

### Query 1 — All records (`SELECT *`)
| student_id | name          | age | department | marks |
|------------|---------------|-----|------------|-------|
| 1          | Aarav Sharma  | 20  | CSE        | 91.50 |
| 2          | Priya Nair    | 21  | ECE        | 76.00 |
| 3          | Rohit Verma   | 22  | MECH       | 65.75 |
| ...        | ...           | ... | ...        | ...   |

### Query 3 — Students with marks > 80
| name         | department | marks |
|--------------|------------|-------|
| Aarav Sharma | CSE        | 91.50 |
| Sneha Das    | CSE        | 88.00 |
| Anjali Patel | ECE        | 82.25 |
| Meera Iyer   | MECH       | 94.00 |

### Query 7 — Average marks per department
| department | avg_marks |
|------------|-----------|
| CSE        | 84.17     |
| ECE        | 79.13     |
| MECH       | 79.88     |
| CIVIL      | 55.50     |

### Query 9 — Combined (WHERE + GROUP BY + ORDER BY)
| department | total_students | avg_marks |
|------------|----------------|-----------|
| CSE        | 3              | 84.17     |
| MECH       | 2              | 79.88     |
| ECE        | 2              | 79.13     |

---

## 📝 Key Concepts Used

| Clause     | What it does                                      |
|------------|---------------------------------------------------|
| `SELECT`   | Picks which columns to display                    |
| `WHERE`    | Filters rows based on a condition                 |
| `GROUP BY` | Groups rows that share a value (e.g. department)  |
| `ORDER BY` | Sorts the result (ASC = A→Z, DESC = Z→A)          |
| `AVG()`    | Calculates the average of a column               |
| `COUNT()`  | Counts the number of rows in each group           |

---

## ✅ Requirements

- MySQL 5.7+ or MySQL 8.x
- MySQL Workbench, VS Code with MySQL extension, or any MySQL client
