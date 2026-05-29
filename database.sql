CREATE TABLE Organization (
    Org_ID INT PRIMARY KEY,
    Org_Name VARCHAR(100),
    Industry VARCHAR(100),
    Contact_Email VARCHAR(150)
);

CREATE TABLE Asset (
    Asset_ID INT PRIMARY KEY,
    Org_ID INT,
    Asset_Name VARCHAR(100),
    Asset_Type VARCHAR(50),
    IP_Address VARCHAR(50),
    Operating_System VARCHAR(100),
    FOREIGN KEY (Org_ID) REFERENCES Organization(Org_ID)
);

CREATE TABLE Analyst (
    Analyst_ID INT PRIMARY KEY,
    Full_Name VARCHAR(100),
    Email VARCHAR(150),
    Certification VARCHAR(100),
    Role VARCHAR(50)
);

CREATE TABLE Incident (
    Incident_ID INT PRIMARY KEY,
    Asset_ID INT,
    Analyst_ID INT,
    Incident_Type VARCHAR(100),
    Severity VARCHAR(20),
    Status VARCHAR(50),
    Detection_Date DATE,
    FOREIGN KEY (Asset_ID) REFERENCES Asset(Asset_ID),
    FOREIGN KEY (Analyst_ID) REFERENCES Analyst(Analyst_ID)
);

CREATE TABLE Alert (
    Alert_ID INT PRIMARY KEY,
    Incident_ID INT,
    Alert_Source VARCHAR(100),
    Alert_Level VARCHAR(20),
    Timestamp DATETIME,
    FOREIGN KEY (Incident_ID) REFERENCES Incident(Incident_ID)
);

CREATE TABLE Vulnerability (
    Vulnerability_ID INT PRIMARY KEY,
    Asset_ID INT,
    CVE_Code VARCHAR(50),
    Severity VARCHAR(20),
    Discovery_Date DATE,
    FOREIGN KEY (Asset_ID) REFERENCES Asset(Asset_ID)
);

CREATE TABLE Remediation (
    Remediation_ID INT PRIMARY KEY,
    Incident_ID INT,
    Action_Taken TEXT,
    Action_Date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (Incident_ID) REFERENCES Incident(Incident_ID)
);

CREATE TABLE Report (
    Report_ID INT PRIMARY KEY,
    Incident_ID INT UNIQUE,
    Report_Summary TEXT,
    Generated_Date DATE,
    FOREIGN KEY (Incident_ID) REFERENCES Incident(Incident_ID)
);
INSERT INTO Organization VALUES
(1, 'SecureNet Ltd', 'Finance', 'admin@securenet.com');

INSERT INTO Asset VALUES
(101, 1, 'Main Firewall', 'Firewall', '192.168.1.1', 'Cisco IOS'),
(102, 1, 'Web Server', 'Server', '192.168.1.10', 'Ubuntu Linux');

INSERT INTO Analyst VALUES
(201, 'Robert Iroha', 'robert@securenet.com', 'CCNA CyberOps', 'SOC Analyst');

INSERT INTO Incident VALUES
(301, 102, 201, 'SQL Injection Attempt', 'High', 'Open', '2026-05-20');

INSERT INTO Alert VALUES
(401, 301, 'SIEM', 'Critical', '2026-05-20 14:30:00');

INSERT INTO Vulnerability VALUES
(501, 102, 'CVE-2025-1234', 'High', '2026-05-18');

INSERT INTO Remediation VALUES
(601, 301, 'Blocked malicious IP and patched server', '2026-05-21', 'Completed');

INSERT INTO Report VALUES
(701, 301, 'Incident successfully contained and mitigated.', '2026-05-22');

SELECT * FROM Incident;

SELECT 
    Incident.Incident_ID,
    Incident.Incident_Type,
    Analyst.Full_Name
FROM Incident
JOIN Analyst
ON Incident.Analyst_ID = Analyst.Analyst_ID;

SELECT Asset.Asset_Name, Vulnerability.CVE_Code, Vulnerability.Severity
FROM Vulnerability
JOIN Asset
ON Vulnerability.Asset_ID = Asset.Asset_ID;
