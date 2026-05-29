<h1>Cybersecurity-Incident-Response-and-Threat-Monitoring-Database-System</h1>

<h2>Description</h2>
This project presents the design and implementation of a Cybersecurity Incident Response and Threat Monitoring Database System developed as part of the MIT802 Database Systems course.

The system models the operational workflow of a Security Operations Center (SOC) by managing cybersecurity incidents, assets, vulnerabilities, alerts, remediation actions, and analyst activities within an organizational environment.

The project demonstrates the application of relational database design principles, including conceptual modeling, logical modeling, physical database design, SQL implementation, and query processing within a cybersecurity-focused business process.

<h2>Project Objectives</h2>
The primary objectives of this project are:

- <b>Design a cybersecurity-focused relational database system</b>
- <b>Model SOC incident response processes</b>
- <b>Implement database structures using SQL</b>
- <b>Manage cybersecurity assets and incidents efficiently</b>
- <b>Demonstrate practical database normalization and relationships</b>
- <b>Execute and retrieve security-related data using SQL queries</b>

<h2>Business Case Study</h2>
The case study focuses on a Security Operations Center (SOC) environment where cybersecurity analysts monitor organizational infrastructure for threats, suspicious activities, vulnerabilities, and security incidents.

The system provides capabilities for:

- <b>Asset management</b>
- <b>Incident tracking</b>
- <b>Vulnerability monitoring</b>
- <b>Security alert management</b>
- <b>Remediation tracking</b>
- <b>Security reporting</b>

<h2>Database Design Components</h2>

<h3>Conceptual Model (ER Diagram)</h3>
The conceptual model was developed using an Entity Relationship Diagram (ERD) to identify entities, attributes, and relationships within the system.

<h3>Major Entities</h3>

- <b>Organization</b>
- <b>Asset</b>
- <b>Analyst</b>
- <b>Incident</b>
- <b>Alert</b>
- <b>Vulnerability</b>
- <b>Remediation</b>
- <b>Report</b>

<h3>Relationships</h3>

- <b>One Organization owns many Assets</b>
- <b>One Asset can have many Incidents</b>
- <b>One Analyst handles many Incidents</b>
- <b>One Incident generates many Alerts</b>
- <b>One Incident has many Remediation actions</b>
- <b>One Incident produces one Report</b>
- <b>One Asset can contain many Vulnerabilities</b>

<h2>Logical Model</h2>
The logical model defines the relational schema, primary keys, foreign keys, and relationships between entities in the database system.

<h2>Physical Model</h2>
The physical database model was implemented using SQL data types and relational constraints compatible with MySQL database systems.


<h2>SQL Implementation</h2>
<h3>Data Definition Language (DDL)</h3>
The project includes SQL scripts for:

- <b>Table creation</h2>
- <b>Primary key implementation</h2>
- <b>Foreign key relationships</h2>
- <b>Relational constraints</h2>

<h3>Data Manipulation Language (DML)</h3>
The database was populated with sample cybersecurity operational data including:

- <b>Security incidents</h2>
- <b>Vulnerabilities</h2>
- <b>SOC analysts</h2>
- <b>Alerts</h2>
- <b>Organizational assets</h2>

<h3>SQL Queries</h3>
Several SQL queries were implemented to retrieve and analyze cybersecurity information from the database system.

Example queries include:

- <b>Incident retrieval</h2>
- <b>Vulnerability analysis</h2>
- <b>Incident-to-analyst mapping</h2>
- <b>Asset vulnerability tracking</h2>
<br />

<h2>Languages and Utilities Used</h2>

- <b>MySQL</b>
- <b>One Compiler</b>
- <b>Lucidchart / ER Diagram Tools</b>
- <b>Relational Database Design</b>
- <b>Cybersecurity SOC Concepts</b>
<h2>Environments Used </h2>

- <b>Windows 10</b>

<h2>Conclusion</h2>
The project successfully demonstrates the design and implementation of a Cybersecurity Incident Response and Threat Monitoring Database System suitable for Security Operations Center environments. The database structure supports efficient management of incidents, vulnerabilities, analysts, assets, and remediation activities using relational database technologies.
<br />


<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
