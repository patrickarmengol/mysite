---
title: "Threat Intelligence Notes"
date: 2020-02-02T20:22:02Z
draft: false
toc: false
images:
tags:
  - notes
  - security
---

These are my notes on threat intelligence.

## Intelligence

Intelligence is high fidelity information that has been analyzed and can be used to influence decision making.

## Cyber Threat Intelligence

> (Cyber (Threat (Intelligence)))

Threat Intelligence is intelligence pertaining to adversaries.

Cyber Threat Intelligence is Threat Intelligence pertaining to the cyber domain.

CTI involves understanding adversary __capabilities__, __motivations__, and __goals__.

CTI finds usefulness in its application to intrusion detection and incident response.

> I feel like the word _cyber_ is superfluous in the context of the infosec sphere so I'm just going to refer to CTI as TI always and forever

## Sources of Intelligence

- __HUMINT__ - human intelligence
- __SIGINT__ - signals intelligence
- __COMINT__ - communications intelligence
- __ELINT__ - electronic intelligence
- __FISINT__ - foreign instrumentation signals intelligence
- __OSINT__ - open source intelligence
- __IMINT__ - imagery intelligence
- __MASINT__ - measurement and signature intelligence
- __GEOINT__ - geospatial intelligence
- __CYBINT__ - cyber intelligence
- __TECHINT__ - technical intelligence
- __FININT__ - financial intelligence

> I'm not even going to attempt to expand on this jargon. Many of these overlap with each other. They do not matter.

TI comes usually comes as a product of the data collected in incident response investigations, malware reverse engineering, honeypot interactions, and hacker forums/channels.

## Indicators of Compromise

IOCs are a form of TI. Types of IOCs include:
- IP addresses
- domains
- file names
- file hashes
- registry entries


## Intelligence Process Models

Models are dumb, but apparently they can be useful for understanding some concepts.

### OODA

__OODA__ is a model that was developed by a military strategist, John Boyd, to describe the decision-making process, particularly in reference to combat operations.

The OODA loop:
[__O__]bserve > [__O__]rient > [__D__]ecide > [__A__]ct <<

An entity would have a competitive advantage if it is able to go through this cycle more quickly than its adversary.

This model can be used to describe the incident response process in how information is gathered and used to take response actions.

The __Observe__ phase refers to the collection of information.

The __Orient__ phase refers to the contextualization of collected information with respect to predispositions, experience, knowledge, and expectations.

The __Decide__ phase refers to the selection of actions that are appropriate in response to the information.

The __Act__ phase refers to the execution of decided upon actions.


### Intelligence Cycle

The __Intelligence Cycle__ is a model that describes the process of processing intelligence. (duh)

The Intelligence Cycle:
Direction > Collection > Processing > Analysis > Dissemination > Feedback <<

The __Direction__ phase refers to the determinization of the goal of the intelligence.


The __Collection__ phase refers to the gathering of the necessary information. The information should be sufficiently numerous and it should come from a variety of sources.

The __Processing__ phase refers to the normalization, organization, translation, enrichment, filtering, prioritization, and presentation of the available information.

The __Analysis__ phase refers to the investigation performed on the information by a human. Intelligence is the outcome.

The __Dissemination__ phase refers to the sharing of the produced intelligence.

The __Feedback__ phase refers to the evaluation of the produced intelligence with respect to the goal.


## Evaluating Intelligence

Some factors that can determine the quality of intelligence include:
- availability of information
- collection sources
- collection method
- collection date
- bias

## Levels of Intelligence

There exist levels of intelligence based on a gradient of abstraction.

__Tactical Intelligence__ refers to low-level, volatile intelligence like IOCs.

__Operational Intelligence__ refers to mid-level, semi-permanent intelligence like recent APT campaigns.

__Strategic Intelligence__ refers to high-level, long lasting intelligence like attacker TTPs and adversary motivations.


## Confidence

Confidence levels refer to the level of trust that can be given to intelligence. This can vary based on source and content.

I don't particularly like the scales used historically for describing confidence levels as they seem to overcomplicate things.

A simple descriptive 'Low->Medium->High' scale works in most cases. If there needs to be more granularity, a numeric '0-100' scale seems appropriate.


## Resources

[awesome-threat-intelligence](https://github.com/hslatman/awesome-threat-intelligence) - a more comprehensive list of resources

The TI ecosystem seems a bit of a mess. There are a bunch of competing standards. TI sources are usually behind some kind of paywall. There's a whole private industry behind this. Below are some of the resources I've used or looked into and would like to explore.

### Formats

|  |  |
| --- | --- |
| [CAPEC](https://capec.mitre.org/) | dictionary and classification taxonomy of attacks |
| [CybOX](http://cyboxproject.github.io/) | absorbed into STIX 2 |
| [MAEC](http://maecproject.github.io/) | language for sharing structured info about malware based on behaviors, artifacts, relationships |
| [OpenC2](https://www.oasis-open.org/committees/tc_home.php?wg_abbrev=openc2) | chartered to draft documents, specifications, lexicons or other artifacts to fulfill the needs of cyber security command and control |
| [STIX 2](https://oasis-open.github.io/cti-documentation/stix/intro) | standard format for TI |
| [TAXII](https://oasis-open.github.io/cti-documentation/taxii/intro) | protocol for exchanging TI |
| [MISP Core Format](https://www.misp-project.org/datamodels/#misp-core-format) | MISP standard json format for TI |

### Sources

|  |  |
| --- | --- |

### Platforms

|  |  |
| --- | --- |
| [MISP](https://www.misp-project.org/index.html) | open-source TI sharing platform |
| [YETI](https://yeti-platform.github.io/) | open source TI organization platform |

### Tools

|  |  |
| --- | --- |

### Reading

|  |  |
| --- | --- |
| [Intelligence-Driven Incident Response](https://www.amazon.com/_/dp/1491934948) | details the role of TI in IR |
| [The Cuckoo's Egg - Clifford Stoll](https://en.m.wikipedia.org/wiki/The_Cuckoo%27s_Egg) | account of one of the earliest cases of cyber threat hunting |
| [Joint Publication 2-0 - US Gov](https://www.jcs.mil/Portals/36/Documents/Doctrine/pubs/jp2_0.pdf) | military document detailing intelligence |
| [Joing Doctorine Publication 2-00 - UK Gov](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/311572/20110830_jdp2_00_ed3_with_change1.pdf) | military document detailing intelligence |
