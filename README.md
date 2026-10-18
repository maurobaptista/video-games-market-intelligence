Global Video Game Market Intelligence: End-to-End Analytics Pipeline

Lead Data Analyst & BI Architect: Mauro Baptista

Contact: maurobaptista18@gmail.com

Domain: Business Intelligence, Data Engineering, Strategic Analytics

📌 Executive Summary & Business Architecture

The global video game market operates as a high-risk, hit-driven ecosystem where capital allocation is traditionally skewed by empirical intuition. The strategic directive of this project is to architect a robust, 100% Data-Driven analytical infrastructure that eradicates "achismo" (guesswork) from executive decision-making.

This project goes beyond basic data visualization; it establishes an End-to-End analytical pipeline—from programmatic data ingestion to advanced semantic modeling. By auditing historical sales metadata, the solution delivers actionable intelligence on ROI optimization, geographic risk exposure, and competitive production throughput, enabling stakeholders to allocate multi-million dollar development budgets with mathematical precision.

🛠️ Technology Stack & System Architecture

The solution leverages a scalable, decoupled architecture to ensure data integrity, optimal performance, and seamless BI integration:

Data Ingestion & Orchestration: Python 3.x (Pandas, SQLAlchemy, Psycopg2-binary).

Relational Storage & SQL Engine: PostgreSQL 16 (optimized for analytical workloads).

Semantic Modeling & BI Layer: Microsoft Power BI (VertiPaq Engine, Advanced DAX).

Presentation Layer: HTML/CSS (Custom Executive Deck).

⚙️ Engineering Workflow & Technical Implementation

1. Idempotent Data Ingestion & Memory Optimization (Python)

Transitioned away from fragile manual CSV uploads by engineering a programmatic ingestion script.

Data Profiling & Casting: Applied strict data type normalization via Pandas prior to database insertion to minimize memory footprint.

ORM & Connection Pooling: Utilized SQLAlchemy to establish secure, scalable connections to the PostgreSQL instance.

Idempotency: Configured the loading pipeline to support replace/append logic, ensuring the pipeline can be re-run without causing data duplication or violating primary key constraints.

2. Advanced Analytical Querying & EDA (PostgreSQL)

Leveraged the PostgreSQL engine for heavy lifting, transforming raw records into aggregated business entities.

Outlier Detection: Implemented filtering logic (WHERE Global > 10M) prior to aggregation to isolate "Mega-Hits" and prevent skewed averages.

Complex Aggregations: Utilized string aggregation functions (STRING_AGG) and conditional math to map high-risk dependencies directly at the database level.

Performance Considerations: Queried data using optimized ANSI SQL, preparing the conceptual groundwork for future dimensional modeling (Star Schema indexing).

3. Semantic Modeling & VertiPaq Optimization (Power BI)

Architected the BI layer focusing on engine performance and dynamic context manipulation.

Storage Mode Strategy: Implemented Import Mode to leverage the VertiPaq in-memory columnar database, achieving optimal data compression and sub-second query latency during cross-filtering.

Advanced DAX & Filter Context: Engineered measures and calculated columns that dynamically evaluate Filter and Row Contexts. Instead of basic arithmetic, developed safe-divide logic and dynamic thresholding to calculate regional dependency (e.g., North America exposure >80%) without triggering computational errors (Division by Zero).

Cross-Filtering UI/UX: Designed a report layout utilizing dynamic Slicers and Top N algorithms, allowing stakeholders to slice historical throughput and genre efficiency with granular precision.

📈 Strategic Insights & Business Outcomes

The deployed BI architecture generated immediate, actionable insights for competitive positioning:

ROI Benchmarking (The Efficiency Matrix): Proved mathematically that while the Action genre holds the highest cumulative revenue, strategic capital should be diversified based on Revenue per Title metrics.

Geographic Risk Exposure: Identified a critical vulnerability in specific franchises (e.g., MLB The Show), where >80% of global revenue is constrained to the North American market, signaling a high-risk profile for international publishing.

Competitive Throughput Analysis: Mapped the production cadences of industry titans (EA Sports, Activision), distinguishing between "Volume-Driven" strategies and "Focused Mega-Hit" strategies.

The "Mega-Hit" Density: Quantified the historical probability of success, highlighting Rockstar and Activision as the apex outliers in generating individual titles surpassing 10 million units.

🚀 Deployment & Reproducibility Guide

To deploy this pipeline locally:

RDBMS Configuration:

Spin up a local PostgreSQL instance (default port 5432).

Provision a target database (postgres).

Environment Setup (Python):

Initialize a Jupyter environment.

Execute the %pip install cell to align local kernel dependencies (psycopg2-binary, SQLAlchemy).

Run the ingestion pipeline to map the DataFrame to the SQL schema.

Semantic Model Instantiation (Power BI):

Launch the provided .pbix file.

Authenticate the PostgreSQL connector using local DB credentials.

Trigger a semantic model refresh to load data into the VertiPaq engine.

Executive Reporting:

Open estrategia_videojogos.html to review the compiled Executive Presentation Deck.

"In a hit-driven market, empirical intuition is a liability. True competitive advantage is engineered through precise, scalable data architecture." — Mauro Baptista
