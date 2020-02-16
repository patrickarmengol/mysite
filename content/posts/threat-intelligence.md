---
title: "Threat Intelligence"
date: 2020-02-02T20:22:02Z
draft: false
toc: true
images:
tags:
  - notes
  - security
---


> NOTE: this post is a work in progress

These are my notes on threat intelligence and incident response.  These notes are very general/broad and are meant as a reference for terminology, models, processes, and ideas. I'm not particularly happy with the organization of the sections in this post and am thinking of splitting it up into multiple posts.

## Understanding Intelligence

_Intelligence_ has many meanings. In the context of this post, it can be defined as high fidelity information that has been analyzed/contextualized, and can be used to influence decision making.

### Data vs Information vs Intelligence

todo


### Cyber Threat Intelligence

_Threat Intelligence_ is _Intelligence_ pertaining to adversaries.

_Cyber Threat Intelligence_ is _Threat Intelligence_ pertaining to the cyber domain.

> I feel like the word _cyber_ is superfluous in the context of the infosec sphere so I'm just going to refer to _CTI_ as _TI_.

A threat or adversary is an entity that has a combination of __hostile intent__, __capability__, and __opportunity__ for attacking. TI largely involves understanding adversary __tactics__, __techniques__, __procedures__, __motivations__, and __goals__.

TI mostly finds usefulness in its application to intrusion detection/prevention and incident response.


### Indicators of Compromise

When people think of TI, they usually refer to IOCs. IOCs are just a form of threat information. They are not intelligence unless they have been put into context.

There are many types of IOCs, some of which are:
- IP addresses
- domains
- file names
- file hashes
- registry entries
- patterns in network traffic

IOCs can be utilized to write countermeasures, build detectors, or scope intrusions.


### Sources of Intelligence

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

TI usually comes as a product of the data collected in incident response investigations, threat hunting, malware reverse engineering, honeypot interactions, and hacker forums/channels.


### Levels of Intelligence

There exist levels of intelligence based on a gradient of abstraction.

__Tactical Intelligence__ refers to low-level, volatile intelligence like contextualized IOCs.

__Operational Intelligence__ refers to mid-level, semi-permanent intelligence like recent exploit/tool releases and APT campaigns.

__Strategic Intelligence__ refers to high-level, long lasting intelligence like attacker TTPs and adversary motivations.


### Confidence

Confidence levels refer to the level of trust that can be given to intelligence. This can vary based on source and content.

> I don't particularly like the scales used historically for describing confidence levels as they seem to overcomplicate things.

A simple descriptive __Low-Medium-High__ scale works in most cases. If there needs to be more granularity, a numeric __0-100__ scale seems appropriate.


### Evaluating Intelligence

Some factors that can determine the quality of intelligence include:
- availability of information
- collection sources
- collection method
- collection date
- bias
- analyst experience

### Threat Attribution

- todo
- find paper by robert m lee
- maybe put this section under deliverables

#### Adversary Admission

- taking credit for operations run
- israeli generals have done this

#### Leaks

- snowden leaks
- shadowbrokers

#### Direct Access

- intelligence programs by intelligence agencies

#### Intrusion Analysis

- defensive counterintelligence
- analyze it and extract knowledge
- over time campaign analysis and activity groups
- enough understanding over the intentions of the adversary, we get notion of who this might be


### Deliverables

todo


## Models

Models are dumb, but they provide any easy method for thinking about systems. For most of these models, certain items can be added, omitted, combined, or placed in a different order so that they may fit different situations.

### Intelligence Models

#### Intelligence Cycle

The _intelligence cycle_ is a model that describes the process of intelligence development.

The Intelligence Cycle:

> _Direction_ > _Collection_ > _Processing_ > _Analysis_ > _Dissemination_ > _Feedback_ <<

##### Direction

The _direction_ phase refers to the determinization of the desired goals/objectives/requirements of the intelligence. This usually includes planning to determine the requirements and appropriate actions for the subsequent steps.

##### Collection

The _collection_ phase refers to the gathering of the necessary information. The information should be sufficiently numerous and it should come from a variety of sources.

##### Processing

The _processing_ phase refers to the normalization, organization, translation, enrichment, filtering, prioritization, and presentation of the available information.

##### Analysis

The _analysis_ phase refers to the investigation performed on the information by a human. Intelligence is the outcome.

##### Dissemination

The _dissemination_ phase refers to the sharing of the produced intelligence.

##### Feedback

The _feedback_ phase refers to the evaluation of the produced intelligence with respect to the goal.

#### OODA

_OODA_ is a model that was developed by a military strategist, John Boyd, to describe the decision-making process, particularly in reference to combat operations.

The OODA loop:

> _[O]bserve_ > _[O]rient_ > _[D]ecide_ > _[A]ct_ <<

An entity would have a competitive advantage if it is able to go through this cycle more quickly than its adversary.

This model can be used to describe the incident response process in how information is gathered and used to take response actions.

##### Observe

The _observe_ phase refers to the collection of information.

##### Orient

The _orient_ phase refers to the contextualization of collected information with respect to predispositions, experience, knowledge, and expectations.

##### Decide

The _decide_ phase refers to the selection of actions that are appropriate in response to the information.

##### Act

The _act_ phase refers to the execution of decided upon actions.


### Threat Models

#### Kill Chain

> _Targeting_ > _Reconnaissance_ > _Weaponization_ > _Delivery_ > _Exploitation_ > _Installation_ > _Command and Control_ > _Actions on Objective_

The kill chain model details the steps taken by an adversary in an intrusion. Lockheed Martin researchers are credited with formalizing the concept. The kill chain model has become ubiquitous in the infosec space. It can go by other names like "Unified Kill Chain", "Cyber Kill Chain", and "Intrusion Kill Chain".

##### Targeting

The _targeting_ phase is not included in the original kill chain model. It refers to the adversary's decision on who they will attack and what their objectives/goals are. This largely involves some type of motivation that can come from external sponsors, government agencies, personal vendettas, or greed.

##### Reconnaissance

In the _reconnaissance_ phase, the adversary tries to collect information about their target in order to get a better understanding of the environment. This may involve:
- browsing company websites
- finding employee organizational charts
- looking at employee social media profiles
- portscanning
- fingerprinting
- looking up domain info
- subdomain enumeration

##### Weaponization

In the _weaponization_ phase, the adversary crafts the attack. This may involve:
- discovering a new vulnerability or using one that has been disclosed but may not have yet been patched
- finding a vulnerable system in the target environment
- developing an exploit for that vulnerability
- attaching a payload to the exploit
- testing the attack
- taking measures to avoid detectibility

##### Delivery

In the _delivery_ phase, the adversary attempts to deliver the payload to the victim. This may involve:
- phishing
- public application/service exploits
- brute forcing
- social engineering
- physical intrusion
- removable media dropping
- watering hole attack

##### Exploitation

In the _exploitation_ phase, the adversary compromises the targetted system by gaining the capability to execute. This may involve:
- commandline
- powershell
- WMI
- process launching
- web service commands
- database commands
- other scripting capabilities

##### Installation

In the _installation_ phase, the adversary sets up persistence. These actions may continue for the duration of the intrusion as setting up multiple forms of persistence on multiple systems is desireable. This may involve:
- creating startup entries
- service creation
- scheduled task creation
- DLL hijacking
- setting up a rootkit/bootkit
- RAT installation
- spreading to other hosts
- credential compromise

##### Command and Control

In the _command and control_ phase (aka C&C or C2), the adversary communicates with the compromised systems in order to send commands and receive information. This may involve:
- RATs
- proxies/TOR
- domains using DGA
- encoding/obfuscation

##### Actions on Objectives

Finally, in _actions on objective_ phase, the adversary attempts to achieve their initial goal. This may involve:
- defacement
- denial of service
- system destruction
- data wiping/encryption
- resource hijacking
- data exfiltration
- data manipulation
- surveillance


#### ATT&CK

MITRE's ATT&CK is a knowledge base of adversary tactics and techniques. Like the kill chain model, the ATT&CK framework is useful for threat modeling. An advantage it is able to provide is a more granular view into how each of the adversary's actions may be performed. Recently, many security products/vendors have been moving towards this model for classification/labeling.

The ATT&CK framework is represented in a matrix of tactics and techniques. Some techniques have more than one potential use and fit under multiple tactics.

In its current state, ATT&CK lists the following as adversary tactics:
- Initial Access
- Execution
- Persistence
- Privelege Escalation
- Defense Evasion
- Credential Access
- Discovery
- Lateral Movement
- Collection
- Command and Control
- Exfiltration
- Impact

[MITRE ATT&CK Matrix for Enterprise](https://attack.mitre.org/)


#### Diamond Model

![diamond_model](/img/threat-intelligence/diamond_model.png)

The diamond model describes the interactions between adversary and victim. The original paper described it as "An _adversary_ deploys a _capability_ over some _infrastructure_ against a _victim_." Occurrences of this are called _events_. Linearly flowing events are grouped into _activity threads_, which can further be grouped into _activity groups_.


### Defense Models

#### Active Defense

todo

#### Pyramid of Pain

The _Pyramid of Pain_ model describes how difficult or 'painful' it is for the adversary to succeed when you are able to utilize intelligence-produced indicators effectively.

![pyramid_of_pain](/img/threat-intelligence/pyramid_of_pain.png)
*source: http://detect-respond.blogspot.com/2013/03/the-pyramid-of-pain.html*


#### Incident Response Cycle

> _Preperation_ > _Identification_ > _Containment_ > _Eradication_ > _Recovery_ > _Lessons Learned_ <<

The incident response cycle model describes the major steps involved in responding to an intrusion.

##### Preperation

The _preperation_ phase occurs prior to the attack. It refers to the state of the environment with respect to it's ability to detect, prevent, and respond to incidents. The responsibility here is on system administration, network engineering, and security engineering.

This may involve:

- POCs
  - team members
  - stakeholders
  - contact information
  - escalation methods
- environment baselining
  - network diagrams
  - critical hosts
  - priveleged users
  - firmware/software version info
- tracking and documentation
  - communication platform
  - war room
  - task delegation
  - secure forensics collection
  - spreadsheet of doom
- telemetry
  - fw logs
  - ids/ips logs
  - proxy logs
  - AV
  - windows events
  - SIEM platforms
  - EDR platforms
  - forensics agents
- hardening
  - network intrusion prevention
  - host intrusion prevention
  - VPNs
  - strong authentication
  - patching infrastructure
  - best practices
  - external security assessments

##### Identification

The _identification_ phase refers to the detection, scoping, and analysis of attacker activity that impacts the environment.

This may involve:
- discovery
  - alert from security device/software
  - notification from government entity
  - threat hunting
  - loss of service
  - public disclosure
- analysis
  - alert review
  - IOC verification
  - correlation
  - research
  - scoping
  - tracking lateral movement
  - IIV discovery
  - malware reversing

##### Containment

The _containment_ phase is apparently a very contentious topic.

Some say the that the phase involves taking action to stopping the attacker in the short term while an eradication and remediation plan is being prepared. Others say that the phase should be limited to observing attacker activities via techniques like hyperlogging.

While the former approach limits potential damage from commodity threats, the latter approach opens up the capability to track sophisticated adversaries that may easily be tipped off. The latter approach also allows for the development of intelligence.

Some even opt to skip this step entirely and head straight to eradication. This is the whack-a-mole approach that is spurred by management's fear of data loss. This kind of reaction may also skimp on proper scoping, leading to remediation actions that tip off the attacker, and resulting in exfiltration of whatever the attacker does have before they are locked out.

This may involve:
- isolating a host
- isolating a network
- blocking malicious IPs/domains/URLs
- disabling or limiting priviledges for a compromised account
- disabling exploited services


##### Eradication

The _eradication_ phase involves executing a strategy to keep an attacker out for good. It is also known as the remediation phase. This strategy should be planned out during the containment phase and should address everything that was impacted.

This may involve:
- removing malware files
- removing additional utilities used by attacker
- mitigate vulnerabilities
- resetting passwords on affected accounts
- reissuing tokens
- recreating certificates
- reimaging or restoring from backup

##### Recovery

The _recovery_ phase involves bringing the environment back to a working state. This phase largely involves cooperation cooperation system owners and engineers.

This may involve:
- reverting modifications made by attacker
- returning operation to affected systems
- confirmation of normalcy

##### Lessons Learned

The _lessons learned_ phase involves looking back at and evaluating how the incident was handled.

This may involve asking:
- what happened?
- could it have been avoided?
- what went well?
- what did not go well?
- what could be done to improve handling of future incidents?
- what telemetry sources could be added to help in investigations?
- what countermeasures can be put in place?
- are there any potential improvements to the containment measures?
- are there any potential improvements to the eradication phase?
- was communication effective for recovery?
- how could downtime be minimized?
- are there any intelligence outputs?

#### F3EAD

todo




## Resources

[awesome-threat-intelligence](https://github.com/hslatman/awesome-threat-intelligence) - a more comprehensive list of resources

The TI ecosystem seems a bit of a mess. There are a bunch of competing standards. TI sources are often behind some kind of paywall. There's a whole private industry behind this. Below are some of the resources that I have used previously, am currently using, or have looked into and would like to explore further.

### Formats / Frameworks

|  |  |
| --- | --- |
| [CAPEC](https://capec.mitre.org/) | dictionary and classification taxonomy of attacks |
| [CybOX](http://cyboxproject.github.io/) | absorbed into STIX 2 |
| [MAEC](http://maecproject.github.io/) | language for sharing structured info about malware based on behaviors, artifacts, relationships |
| [OpenC2](https://www.oasis-open.org/committees/tc_home.php?wg_abbrev=openc2) | chartered to draft documents, specifications, lexicons or other artifacts to fulfill the needs of cyber security command and control |
| [STIX 2](https://oasis-open.github.io/cti-documentation/stix/intro) | standard format for TI |
| [TAXII](https://oasis-open.github.io/cti-documentation/taxii/intro) | protocol for exchanging TI |
| [MISP Core Format](https://www.misp-project.org/datamodels/#misp-core-format) | MISP standard json format for TI |
| [MITRE ATT&CK](https://attack.mitre.org/) | knowledge base and framework for mapping attacker TTPs |

### Platforms

|  |  |
| --- | --- |
| [MISP](https://www.misp-project.org/index.html) | open-source TI sharing platform |
| [YETI](https://yeti-platform.github.io/) | open source TI organization platform |

### Sources

|  |  |
| --- | --- |

### Tools

|  |  |
| --- | --- |

### Reading

|  |  |
| --- | --- |
| [Intelligence-Driven Incident Response](https://www.amazon.com/_/dp/1491934948) | details the role of TI in IR and elaborates on many models |
| [The Cuckoo's Egg - Clifford Stoll](https://en.m.wikipedia.org/wiki/The_Cuckoo%27s_Egg) | account of one of the earliest cases of cyber threat hunting |
| [Joint Publication 2-0 - US Gov](https://www.jcs.mil/Portals/36/Documents/Doctrine/pubs/jp2_0.pdf) | military document detailing intelligence |
| [Joing Doctorine Publication 2-00 - UK Gov](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/311572/20110830_jdp2_00_ed3_with_change1.pdf) | military document detailing intelligence |
| [Intelligence-Driven Computer Network Defence Informed by Analysis of Adversary Campaigns and Intrusion Kill Chains](https://www.lockheedmartin.com/content/dam/lockheed-martin/rms/documents/cyber/LM-White-Paper-Intel-Driven-Defense.pdf) | paper by Lockheed Martin detailing the killchain model  |
| [NIST SP 800-61 Rev. 2 - Computer Incident Handling Guide](https://csrc.nist.gov/publications/detail/sp/800-61/rev-2/final) | IR guidelines published by NIST |

### Training


|  |  |
| --- | --- |
| [SANS FOR578](https://www.sans.org/course/cyber-threat-intelligence) | training course for the GCTI certification |
| [SANS FOR508](https://www.sans.org/course/advanced-incident-response-threat-hunting-training) | training course for the GCFA certification |
