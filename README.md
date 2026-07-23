
# Mini-hospital-integration-platform
A production-style healthcare integration platform built using Mirth Connect to simulate interoperability between two hospitals using HL7 v2.x.

## Overview
Healthcare organisations rarely use a single Electronic Health Record (EHR) system. Hospitals, GP practices, laboratories and imaging systems often use different software from different vendors. These systems must exchange patient information safely and reliably.

This project demonstrates the design and implementation of a complete healthcare interoperability solution using HL7 v2.x, Mirth Connect, MySQL, and TCP/IP networking.

The platform simulates two hospitals exchanging HL7 ADT messages while implementing production-grade reliability features including:

- Real-time HL7 messaging
- ACK/NACK processing
- Automatic retries
- Dead Letter Queue (DLQ)
- Message validation
- Delivery tracking
- Error logging
- Operational monitoring

This project was developed as part of my practical learning in healthcare interoperability and demonstrates many of the concepts used by enterprise interface engines such as Mirth Connect, Rhapsody, Cloverleaf and Ensemble.

## Features
HL7 Message Generation

Generate HL7 ADT messages directly from relational database records.

Supported messages:

- ADT^A01 –-Admit Patient
- ADT^A03 –- Discharge Patient
- ADT^A04 –- Register Patient
- ADT^A08 –- Update Patient Information

## HL7 Parsing

Parses standard HL7 segments including:

- MSH
- EVN
- PID
- PV1
- NK1
- AL1
- DG1

## ACK/NACK Processing

Processes application acknowledgements from Hospital B.

Supported acknowledgement codes:

Code	Meaning
- AA	Message accepted
- AE	Application Error
- AR	Application Reject

##Retry Manager

Automatically retries failed messages.

Features include:

- configurable retry interval
- retry counter
- retry scheduling
- retry status updates
- automatic stop after maximum attempts

## Dead Letter Queue (DLQ)

Messages that exceed the retry limit are automatically moved to a Dead Letter Queue.

Each failed message stores:

- Message Control ID
- Patient ID
- Visit ID
- Failure Reason
- Retry Count
- Source Channel
- Destination
- Timestamp
- Replay Status

## Operational Monitoring

Tracks message lifecycle through:

- NEW
- SENT
- RETRY_PENDING
- COMPLETED
- DEAD_LETTER

## Architecture

<img width="1536" height="1024" alt="ChatGPT Image Jul 23, 2026, 05_39_04 AM" src="https://github.com/user-attachments/assets/28d460d2-5993-4d63-8193-94b028c7b9bc" />

## Technologies Used----------------Technology	Purpose
- Mirth Connect	----------------------Healthcare Interface Engine
- HL7 v2.x	----------------------------Healthcare Messaging Standard
- JavaScript ---------------------------	Message Processing
- MySQL	---------------------------------Patient Database
- SQL	------------------------------------Data Extraction
- JDBC------------------------------	  Database Connectivity
- TCP/IP-----------------------------	Real-time Messaging

## Database Structure
Sender Database: demoehr

Contains:

- PatientDemographics
- PatientNames
- Encounters
- NextOfKin
- Allergies
- Diagnoses

Receiver Database: demoehr_receiver

Stores received patient information and includes:

- DeadLetterQueue

for permanently failed messages.

## Channel Design
### 1. DatabaseReader

Responsibilities:

- Read patient encounters
- Generate HL7 ADT messages
- Update processing status
- Send messages via TCP
### 2. TCP Reader

Responsibilities:

- Receive incoming HL7 messages
- Forward to receiver channel
### 3. ADT_Inbound_Receiver

Responsibilities:

- Parse HL7 messages
- Validate message content
- Insert patient records
- Return ACK messages
### 4. Retry_Manager

Responsibilities:

- Process ACK responses
- Detect failures
- Schedule retries
- Increment retry count
- Move failed messages to DLQ
