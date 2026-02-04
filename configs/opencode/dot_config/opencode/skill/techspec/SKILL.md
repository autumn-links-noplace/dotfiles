---
name: techdesign
description: Technical architecture and design specification creation following Clean Architecture and design principles
license: MIT
compatibility: opencode
metadata:
  workflow: architecture
  audience: architects,developers
  principles: clean-architecture,vertical-slices,testing-pyramid
---

# Planning

You are a software architect for this application. Your task is to design technical implementations from PRDs.

**IMPORTANT:** You create technical design specifications only. You do NOT implement code. Your output is handed to the build agent.

# Design Principles

Apply these when designing:

- **Automated Testing**: Specify automated tests following the local conventions / patterns
- **Vertical Slices**: Break work into end-to-end deliverable phases (UI → logic → data)
- **Clean Code**: Single responsibility, clear naming, minimal dependencies, testability
- **Clean Architecture** (Layer-Based): Organize by concentric layers (e.g. Entities → Use Cases → Interface Adapters → Frameworks/Drivers) where source code dependencies point inward following the Dependency Rule. Inner circles contain high-level business rules independent of external details; outer circles contain low-level mechanisms (UI, database, frameworks).

START_TEMPLATE

---

# —————————————————————————————————————————— \<your title here\>

| Status: DraftAuthor:​ \<your name here\>Stakeholders: \<primary engineering / product stakeholders here\> Estimated Investment: Small (\<4 dev-weeks) Last updated:​ \<date here\> |  |  |  |
| :---- | :---- | :---- | :---- |
| **Reviewers:**  | \<reviewer\> | [Bar Raiser Sponsor](https://compass-tech.atlassian.net/servicedesk/customer/portal/28/group/129/create/407) | Not started |
|  | \<reviewer\> | \<area\> TL/EM/PM | Not started |
|  | \<reviewer\> | \<area\> TL/EM/PM | Not started |
|  | \<reviewer\> | Security *(if needed, request [here](https://compass-tech.atlassian.net/servicedesk/customer/portal/1/group/1))* | Not started |

# **Overview**

*Why* are we doing this? What *business problem* led you to create this proposal? *KPIs impacted and estimates*.  Include a short one sentence summary of what you are proposing we do about this problem.

Write this section first and get alignment from your manager and likely stakeholders before proceeding.  E.g. Is this a worthwhile impact to invest more time in?

See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

# **Terminology**

* **Esoteric Term \#1** – See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

# **Goals**

* See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

# **Non-Goals**

* See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

# **Key Decisions**

What *decisions* are actually requested for your solution? What, specifically, are you seeking approval for?

# **Background**

See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

# **Proposed Solution**

See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

## **Heading 2**

### **Heading 3**

#### Heading 4

##### Heading 5

# **Alternatives Considered**

See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

# **Risks**

See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

# **Investment Analysis**

The anticipated costs from this project include the following:

* **\[X dev-weeks, one-time\] \[dependency/owning team\]**  See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

* Infra costs: Per-resource type and sizing for gamma and production (ex. S3 bucket 1TB, Aurora database 2x 4xlarge, K8S Compute 12 CPU 20 GB RAM).

\[For costs that are dependent on another team, add them as a reviewer, and ensure alignment on costs\]

The anticipated savings & benefits from this project include the following:

* **\[$X-$Y/month, ongoing\]** See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

**Net 12-Month Return:** **$X, \-Y dev-weeks**

**Assessment:** See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

# **Supplemental Details**

## **Implementation**

See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

## **Testing**

See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit#bookmark=id.s3a0xmg7vu84).

## **Operational Requirements**

See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

## **Contractual Obligations**

See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

## **Related Documents**

* See [instructions](https://docs.google.com/document/d/1RrG5smhhITEP4mmkXbXTIdyOMhwz6uGctanFUh86674/edit).

---

END_TEMPLATE

# **Reviewer’s Checklist**

When authoring a technical specification, it’s important to keep in mind what reviewers will be evaluating. The checklist below is meant as a cursory guide to frequently overlooked topics that reviewers will be considering throughout the specification.

**For Authors:** To ensure a more efficient review, please use this checklist to verify that common oversights have been addressed before requesting reviews. Please keep this checklist for the reviewers' reference.

- [ ] Necessary Content  
      - [ ] Are all the template sections accounted for?  
      - [ ] Are the sections filled out as needed?  
            - [ ] Are there any key terms that may be esoteric?  
            - [ ] Are there any CPRA or other compliance concerns?  
            - [ ] Are there any service level agreements?  
      - [ ] Is the problem that is being solved clear?  
      - [ ] Is the relevance to Compass’s bottom line explicitly defined?  
      - [ ] Is the team ownership and incident response policy clear?  
      - [ ] Are the [implications for mobile](https://docs.google.com/document/d/1f8sXZghAkh7C5GVhPQcwEhWfwn_if2Fr8kVijJvQC2k/edit?usp=sharing) appropriately considered?  
      - [ ] Are the implications for security appropriately considered?  
- [ ] Necessary Reviewers  
      - [ ] If project is Large or X-Large, shared with SARG?  
            - [ ] Does SARG want to add a SARG member as a reviewer?  
            - [ ] Is an in-person SARG required?  
      - [ ] Are the appropriate engineering stakeholders consulted?  
            - [ ] Implementing teams  
            - [ ] On-call teams  
            - [ ] Clients / dependent teams  
            - [ ] Affected platform teams  
      - [ ] Are the appropriate product stakeholders consulted?  
      - [ ] Are the appropriate security stakeholders consulted? Request a security review [here](https://compass-tech.atlassian.net/servicedesk/customer/portal/1/group/1)  
      - [ ] Are the appropriate legal / compliance stakeholders consulted?  
            - [ ] Will this project impact financially-significant systems like Netsuite, Coupa, Workday, or specific platform modules (Incentive Center, Contract Services) or production AWS accounts (AgentDataPlatformProduction, DealsPlatformProduction, ProductionBrokerageWorkflow) ?  
            - [ ] Will this project process, store, or transmit credit/debit card data?  
            - [ ] Will this project collect new user personal data, or change how we use, store, share, or delete existing personal data?  
- [ ] Risk Assessment  
      - [ ] Are all potential and notable risks adequately captured?  
      - [ ] Is the proposal sufficiently addressing the known risks?  
- [ ] Sound Decision-Making  
      - [ ] Are there assertions made that exhibit faulty logic?  
      - [ ] Are there unsubstantiated claims that lack supporting data?

# **How to Use the Tech Memo Template**

This document is a complementary resource for both the [tech memo template](https://docs.google.com/document/u/0/d/1vFKPhL_P0ZDcGc1eAWzdLwyfOSG9bTEuHphYXTj-_QM/edit) and the [primary project specification template](https://docs.google.com/document/u/0/d/182jmfEPUQJFsHLGEcB7BH-Wt1gmVwG_3xTLaTWOap84/edit) that provides detailed explanations and suggestions for how to complete each section. 

Format recommendations for each section, while not mandatory, are highly encouraged. Length guidance and sentence limits are intentionally brief to foster focused writing. If a bar raiser receives a document that is rambling, unclear, or unreviewable in a reasonable amount of time, the author may be asked to rewrite it in accordance with the recommended format. All sections are mandatory, but not all specifications will have relevant content for all sections. If a section is not relevant to a particular project, a single sentence description detailing why it does not apply is sufficient.

The end result of following these instructions is a document which, when read up to the Supplemental Details section, contains the technical details necessary for review from external stakeholders (e.g. bar raisers, SARG) that offers additional details necessary for the implementation team by reading further.

[Real-world Short Example](https://docs.google.com/document/d/1VFK3_hRF8kjijhQ9V14Qi8EH48d7qSFMko-s7TlbsbM/edit#) (4 pages)  
[Real-world Long Example](https://docs.google.com/document/d/1Rc-kz7oqytXe3fg3JkGf34_IA4hEp65-KXMPjECiJFw/edit#) (15 pages)

For any inquiries to update Template itself or these instructions please contact engineering leads or design review sponsors.  
Email: [eng-group-leads@compass.com](mailto:eng-group-leads@compass.com), [eng-tech-leads@compass.com](mailto:eng-tech-leads@compass.com)  
Slack: \#technical-design-reviews

# **Reviewer’s Checklist**

When authoring a technical specification, it’s important to keep in mind what reviewers will be evaluating. The checklist below is meant as a cursory guide to frequently overlooked topics that reviewers will be considering throughout the specification.

- [ ] Necessary Content  
      - [ ] Are all the template sections accounted for?  
      - [ ] Are the sections filled out as needed?  
            - [ ] Are there any key terms that may be esoteric?  
            - [ ] Are there any CPRA or other compliance concerns?  
            - [ ] Are there any service level agreements?  
      - [ ] Is the problem that is being solved clear?  
      - [ ] Is the relevance to Compass’s bottom line explicitly defined?  
      - [ ] Is the team ownership and incident response policy clear?  
      - [ ] Are the [implications for mobile](https://docs.google.com/document/d/1f8sXZghAkh7C5GVhPQcwEhWfwn_if2Fr8kVijJvQC2k/edit?usp=sharing) appropriately considered?  
      - [ ] Are the implications for security appropriately considered?  
- [ ] Necessary Reviewers  
      - [ ] If project is Large or X-Large, shared with SARG?  
            - [ ] Does SARG want to add a SARG member as a reviewer?  
            - [ ] Is an in-person SARG required?  
      - [ ] Are the appropriate engineering stakeholders consulted?  
            - [ ] Implementing teams  
            - [ ] On-call teams  
            - [ ] Clients / dependent teams  
            - [ ] Affected platform teams  
      - [ ] Are the appropriate product stakeholders consulted?  
      - [ ] Are the appropriate security stakeholders consulted? Request a security review [here](https://compass-tech.atlassian.net/servicedesk/customer/portal/1/group/1)  
      - [ ] Are the appropriate legal / compliance stakeholders consulted?  
- [ ] Risk Assessment  
      - [ ] Are all potential and notable risks adequately captured?  
      - [ ] Is the proposal sufficiently addressing the known risks?  
- [ ] Sound Decision-Making  
      - [ ] Are there assertions made that exhibit faulty logic?  
      - [ ] Are there unsubstantiated claims that lack supporting data?

# **Template Sections**

## **Overview**

The “Overview” section provides a clear and **concise** summary of the project. An overview outlines the purpose of the project, the context in which it will be used, the problem it is solving, and helps stakeholders quickly understand how it will be solved.

**Key Questions:**

* What problem led us to create this proposal?  
* Why is that problem significant?  
* How do we plan to solve the problem?  
* KPIs impacted and estimates

**Format Recommendations:**

Use just 4 sentences. 1 sentence to introduce the document, and 1 sentence to answer each of the above questions. If the proposal is quite long (10+ pages), add 1-2 more sentences summarizing the proposal’s details after introducing the problem.

**Example:**

*This document (proposes|defines|outlines) \<the essence of the proposal\> (that|to) \<provides what benefit\>.*

*\<important user(s)\> has trouble \<accomplishing some goal\> because \<reason(s)\>. This matters to Compass because \<reason(s)\>.*

*\<the essence of the proposal\> solves this (by|using) \<mechanism\>. \<1-2 more sentences summarizing the proposal if 10+ pages\>*

## **Terminology**

*Optional. Fill out this section if there are terms which are essential to understanding your proposal that may be unfamiliar to at least one tenured engineer at Compass.*

The “Terminology” section provides a defined list of important terms used in the document that any reader on another team at Compass might be unfamiliar with. If terminology should be familiar to all engineers in the company, it does not need to be defined here. If new terminology is being coined for the purpose of this project, it is acceptable to define it the first time it is used instead of this section.

**Key Questions:**

* What terms are essential to understanding the proposal that at least one experienced engineer at Compass might not be familiar with?

**Format Recommendations:**

Use a bulleted list with the defined term bolded. Acronyms should be spelled out. Definitions do not need to be complete sentences.

**Examples:**

* ***DSAR** – **D**ata **S**ubject **A**ccess **R**equest, a formal inquiry made to a company by a data subject inquiring what of the data subject's personal information has been collected, stored, and used. Compass is required to respond to DSARs as part of CPRA legislation..*  
* ***Enforcery** – the legacy Contactually codebase that still handles a majority of central contact-related functionality for Compass’s CRM, a ruby monolith deployed on Heroku that is relatively far off the Golden Path.*

## **Background**

The “Background” section provides the reader with the necessary context to appreciate the proposed solution. It provides clarification on what the project will intentionally not include or support, and helps to manage expectations and define what is in and out of scope of the document. 

**Key Questions:**

* What existing systems, teams, processes, people, and policies are involved?  
* How do those existing systems, teams, policies work together?  
* What is the problem with the way these systems, teams, and policies work?  
* Why does this problem exist?  
* What makes this problem challenging?  
* How do we currently solve this problem?  
* What else does the reader need to know about our problem?

**Format Recommendations:**

Use 1-2 sentences to describe the primary system or state of the world involved in the proposal, use 1-2 sentences to describe the problem with this situation, why this happened or how we created this problem, use 2-3 sentences to walk through a very specific example using the actual names of systems / files / apps / components, and 2-3 more sentences on the consequences of this information on the problem that the proposal addresses. 

Heavily link to source code, PRDs, and other pre-existing architecture documentation but do not rely on links alone. When linking to source code on GitHub be sure to reference specific lines and a fixed git hash rather than generic “master” branch links as this ensures these links are not broken in the future (Protip: hit “y” when looking at code on the main branch of the GitHub UI to convert the current URL into a fully resolved sha-1 ref of the latest commit).

Use of diagrams and pseudocode to illustrate simplified versions of the problem are **highly recommended**.

**Example:**

*\<1-2 sentences describing the existing system / state of the world\>. \<1-2 sentences on the problem with that / why this problem exists\>. \<2-3 sentence walkthrough of a specific example using the actual names of systems / files / apps / components\>.*

*\*diagram or code block illustrating the existing system or problem\**

*\<2-3 sentences on the consequences of this system / problem\>*

**Anti-Examples (Do NOT do this\!):**

*Read this 128-page architecture document about our system.*

*Read this 63-page PRD about the product we are building.*

## **Goals**

**Format Recommendations:**

Use a bulleted list with a single sentence fragment for each goal. Fragments should complete the sentence “We want to \_\_\_\_\_\_.” Ensure that your goal is narrow enough that you are actually describing how we will achieve it in the current proposal. Do NOT describe your specific solution as a goal. Any bullet starting with “Build” or “Develop” or “Migrate” is probably a solution, not a goal. Do NOT copy generic high-level goals from a broad product spec verbatim, narrow those goals to the portion of that achievement that is actually addressed by your proposal.

**Examples:**

* *Enable agents to search contacts by their associated deal status.*  
* *Lower third-party spend by Marketing Center applications.*  
* *Reduce the incident rate in CCiBT frontend applications.*  
* *Improve the incident response time to all Tier-1 hydra applications.*  
* *Maintain existing CRM functionality in the contact import flow.*  
* *Avoid any downtime or data loss to our postgres databases.*  
* *Outline the mobile changes necessary to support Initiative X.*  
* *Decrease CI compile time from 36 mins to 20 mins per pull request.*  
* *Increase integration test pass rate from 54% to 70%.*

**Anti-Examples (Do NOT do this\!):**

* *Build a new PDF generation service written in Go.*  
* *Migrate all of our frontend applications to React 18\.*  
* *Develop a new pattern for postgres upgrades.*

## **Non-Goals**

*Optional. If the scope is obviously confined by the goals, no notable constraints have been ignored, and opportunities for confusion are unlikely, this section may be replaced with a one sentence description why.*

The “Non-Goals” section outlines what the proposal is NOT intended to achieve or address. It provides clarification on what the project will intentionally not include or support, helps to manage expectations, and defines what is in and out of scope of the document.

Non-Goals are unsupported features, known limitations, or notable simplifications to the problem that a reader might not be aware of. They are NOT goals in a negated form.

**Key Questions:**

* What problems are we NOT solving that readers might mistakenly think we are?  
* In what ways have we simplified the problem in order to narrow our scope?  
* What constraints are we intentionally ignoring?

**Format Recommendations:**

Use a bulleted list with a single sentence fragment for each non-goal. Fragments should complete the sentence “We aren’t trying to \_\_\_\_\_\_.” Do NOT describe an actual goal in negated form.

**Examples:**

* *Solve our pre-existing problems with scalability or performance.*  
* *Preserve our current URL route structure for bookmarks.*  
* *Predict how this solution will perform beyond 2023Q3.*

**Anti-Examples (Do NOT do this\!):**

* *Exceed a p90 response time of 100ms. (If \<100ms@p90 is a goal)*

## **Proposed Solution**

The “Proposed Solution” section provides a more detailed, yet still high-level engineering description of how the proposal is solving the problem.

When discussing your proposed solution in this section, include all relevant information that other stakeholders might need in order to evaluate your proposal but do not dive deep into implementation details. Such details may be referenced and linked to in the “[Implementation Details](#implementation)” section of the Supplemental Details where a more complete description of the solution for implementers resides.

After reading “Proposed Solution,” a reader should understand what the technical components are at a high level, what they are responsible for, what major decisions are proposed for the implementation of each of them, and how they will work together to solve the problem, even if they couldn’t implement the proposal from this description alone.

**Key Questions:**

* What technical components are we changing or creating?  
* How do they relate to each other?  
* How do they collectively solve the problem?  
* What important decisions were made for each of our technical components?

**Format Recommendations:**

Immediately below the section header, introduce each of the technical components (each service, subsystem, application, module, API, etc.) that are introduced, changed, or affected by the proposal followed by one or more diagrams depicting how they fit together.

Use a subsection for each of these technical components to further explain their purpose and mechanics. Avoid inlining lengthy schemas, thrift, or typedefs in this section unless the specific API / interface contract change itself is the proposal.

Do NOT attempt to provide lengthy justifications or comparisons to alternatives in this section. Such content belongs in “Alternatives Considered” in the Supplemental Details.

For frontend components, do NOT copy/paste product descriptions without addressing the engineering considerations of each component. Designs can be helpful visual aids, but they are not the entirety of the engineering concerns. 

**Examples:**

***Proposed Solution***  
*\<1 sentence description of the overall solution\>. This consists of…*

* *\<name of component 1\>, a \<description of thing\> that \<purpose\>*  
* *Changes to \<name of component 2\> to \<description of chage\>*  
    
  *\<diagram of the things\>*

  ***Component 1***  
  *\<1-3 sentences on how component 1 works\>*  
    
  *\<1-3 sentences on its purpose/benefits\>*

  ***Subcomponent 1***  
  *\<1-3 sentences on how subcomponent 1 works\>*  
    
  *\<1-3 sentences on its purpose/benefits\>*  
    
  ***Subcomponent 2***  
  *\<1-3 sentences on how subcomponent 2 works\>*  
    
  *\<1-3 sentences on its purpose/benefits\>*  
    
  ***Component 2***  
  *\<1-3 sentences on how component 2 is affected by proposal\>*  
    
  *\<1-3 sentences on the changes’ purpose/benefits\>*

## **Risks**

The “Risks” section clearly outlines all of the known ways that this proposal could go poorly, fail to solve the problem, or introduce new problems for Compass.

Technical risks, product risks, security risks, privacy risks, tech debt, and even the consequences of well-informed tradeoffs should be discussed here along with any potential mitigations we’ve thought of that could limit our exposure to this risk, even if we don’t currently believe those mitigations are worth implementing.

All projects worth documenting have risks. The existence of risks is not a bad thing\! Openly acknowledging what can go wrong and the possible mitigations we may elect is essential in a sound practice of engineering.

**Key Questions:**

* What are the potential downsides of this proposal or the selected tradeoffs?  
* In what ways can we mitigate those downsides?

**Format Recommendations:**

Create a subsection for each risk that objectively highlights the potential downside, in what circumstances we would be likely to face this downside, and a description of what potential mitigation options we may have.

**Examples:**

***Risks***  
***Downtime During Migration***  
*\<1-2 sentences explaining what effect the risk would have if realized\>*  
*\<1 sentence explaining when we would encounter this risk\>*  
*\<1 sentence explaining why we are comfortable accepting this risk\>*

***Potential Mitigations***  
*\<1-3 sentences outlining potential mitigations to this risk\>*

## **Investment Analysis**

The “Investment Analysis” section examines the aggregate costs and benefits with the proposed solution, including both the direct impact (such as initial development, infra spend, vendor spend, and incremental revenue) and indirect impact (such as changes to on-going support, incident risk, and productivity).  This should clarify which costs are dependencies on other teams. For costs that are dependent on another team, add them as a reviewer, and ensure alignment on costs.

For infra costs, understand and document resource type and sizing for gamma and production (ex. S3 bucket 1TB, Aurora database 2x 4xlarge, K8S Compute 12 CPU 20 GB RAM) to the best of your ability. 

This brief return-on-investment (ROI) analysis should focus on connecting the project to its value to Compass as a company. *Very* *rough* estimates are expected in the pursuit of breadth, and use ranges of possible values to indicate your uncertainty. e.g. 8-20 dev-weeks depending on X, Y, and Z.

The goal is to reach a brief acknowledgement of why we believe this project is the best use of our engineering time for the betterment of Compass’s bottom line, not necessarily a rigorous dollar estimate of the value of a project.

**Key Questions:**

* What are the upfront costs and benefits of this proposal?  
* What are the ongoing costs and benefits of this proposal?  
* How long will it take until we expect to see a positive return on this investment of our time?

**Format Recommendations:**

Separate this section into three parts: the costs, the benefits, and an assessment of the return on investment.

For costs, highlight each component as either ongoing or one-time. Consider developer time (both implementation and maintenance), loss of revenue, increase to vendor spend, increase in incident frequency or response times, and increases to agent churn.

For benefits, highlight each component as either ongoing or one-time. Consider developer time saved (both implementation and maintenance), increases in revenue, decreases in vendor spend, decreases in incident frequency or response times, and increases in agent retention.

For assessment, aggregate the expected net return in 12 months across your different dimensions and provide 1-2 sentences explaining whether the presented tradeoffs make sense to pursue further.

**Examples:**

***Investment Analysis***  
*The anticipated costs from this project include the following:*

* ***\[12-20 dev-weeks, one-time\]** Initial implementation, migration, and deprecation of existing system endpoints.*  
* ***\[Notable increase to incident risk, one-time\]** During any transition of this magnitude there is some minor incident risk from unexpected incompatible changes.*

  *The anticipated savings & benefits from this project include the following:*

* ***\[Notable improvement to incident response times, ongoing\]** Moving more of this functionality to the golden path and increasing the available number of knowledgeable responders is expected to reduce incident response time in the long-term.*  
* ***\[Notable decrease to incident risk, ongoing\]** Elimination of a third-party in our critical dependency path for a relatively unreliable service ([80.5% uptime](https://status.filestack.com/uptime/4q67ll4qdzc3?page=1) in March) results in a notable decrease to incident risk.*   
* ***\[$50-100/month, ongoing\]** Elimination of Heroku as an infrastructure provider for CSV imports. The compute here is low and insignificant compared to the rest of Enforcery costs that become available following this work (\~$295k).*  
* ***\[$50-500/month, ongoing\]** Elimination of Filestack usage for CSV import files. The volume here is low and insignificant compared to other Compass uses of Filestack.*  
    
  ***Net 12-Month Return:** **$1,200-$7,200, \-20 dev-weeks, 1-2 incidents prevented***

  ***Assessment:** This project primarily trades developer time now for improved stability and product investment positioning in the future with negligible direct monetary impact. In absence of more compelling stability concerns or revenue generating opportunities elsewhere, this appears to be a sound investment of spare development cycles.*

## 

## **Supplemental Details**

The “Supplemental Details” section at the end of the document includes additional information that supports the proposal and may be necessary for the implementing team, but is not essential to understand the decisions being made. 

This may include detailed implementation plans including rollout, feature flags, product metrics, milestones, cost estimates, and links to other supporting documents. Supplemental Details are intended to provide additional information for particular stakeholders, teammates, or reviewers that may not be as broadly applicable. A major goal of this section is to enable teams to author a single document for the proposal without needing separate documents for separate audiences (e.g. design review, internal team, SARG).

### Implementation {#implementation}

*Optional. If a proposal is discussed only at a high-level with no additional detail necessary to move to implementation, this section may be omitted at the team’s best judgment.*

The “Implementation” section provides in-depth and comprehensive information on how the proposal is to be implemented. 

The primary difference between this section and “Proposed Solution” is the intended audience. Information contained here is generally not applicable to the entire design review audience and isn’t strictly necessary for understanding the proposal at a high level, but might be essential for the implementing team’s internal planning.

**Key Questions:**

* What milestones are there to achieve incremental progress?  
* What are the thrift/typescript/swift typedefs of relevant APIs?   
* What are the relevant database schemas and validations?  
* What rollback mechanisms will be available in case of failures? 

**Format Recommendations:**

Use a subsection for each technical area under discussion. The format of this section is largely up to the authoring team as its purpose is to contain all auxiliary technical information needed by a variety of diverse stakeholders.

Subsections such as “API Definitions,” “Database Schema,” “Testing Plan,” “Rollout Plan,” and “Milestones” are common, but teams are encouraged to establish their own conventions that suit their unique needs in this section.

**Example:**

***Implementation***

***API Definitions***

***\<name of service \#1\> API***   
*\<codeblock of thrift/typescript with comments\>*

***\<name of service \#2\> API***   
*\<codeblock of thrift/typescript with comments\>*

***Milestones***

*\<1-3 sentences explaining what is expected to be achieved by milestone\>*

***Milestone 2 \- 15-30 dev-weeks***  
*\<1-3 sentences explaining what is expected to be achieved by milestone\>*

### Testing

*Optional. If a proposal is discussed only at a high-level with no additional detail necessary to move to implementation, this section may be omitted at the team’s best judgment.  If there is Implementation, then Testing is required.*

Engineering teams (not QA) are responsible to ensure adequate testing for their implementation. It is important to consider testing early in the development lifecycle as there are sometimes requirements and complexity that can delay projects.  Having a testing strategy and certain artifacts are required by both [Guardrails Protecting Production Services](https://docs.google.com/document/d/1WW0zG3gkiKyCaGTrB9svNY2T_XMomI0zoD_2KRNw5PU/edit#heading=h.k5b46jvwqlwq) and [Compass System Development Life Cycle Policy - 2024.pdf](https://drive.google.com/file/d/1BXynqcsiDBGgTINef79_Xd_ZwlOnMZgY/view)  
Please reference [Testing At Compass](https://compass-tech.atlassian.net/wiki/spaces/ENGLEARN/pages/3915055111/Testing+at+Compass) for more detailed information.

**Key Questions:**

* Is the team following the Guardrails related to sufficient unit and integration testing?  
* Beyond regular unit and integration tests that are pushed with PRs, is there a need for other forms of testing like Performance, Load, Security, or Accessibility?  
* Are acceptance criteria defined for the requirements, stories, and use cases?  
* What is the test data needed for validating the acceptance criteria, requirements, stories, and use cases?  
* Is all test data available (ex. that which is provided in Atlas helpers) or will test data need to be generated (ex. that which is not provided in Atlas helpers, or required from other teams like Identity to test permissioning)?

### Operational Requirements

The “Operational Requirements” section describes the on-going operational demands of the proposed solution both in terms of technical resources and service-level expectations. 

The goal of this section is to quantify the ongoing technical and human cost of operating the proposal as well as demonstrate a thoughtful commitment to operational excellence in any new services. Authors should collaborate with their product and engineering manager stakeholders to define metrics and service level requirements.

#### Resources

This subsection quantifies the cloud and third-party resources required to support the proposed solution. 

**Key Questions:**

* What compute/memory/disk resources are required by this proposal?  
* What is the expected vendor usage as a result of this proposal?

**Format Recommendations:**

Use any of the relevant example tables below to capture the relevant resource estimates. 

Proposals that modify existing systems or APIs which do not anticipate changes to resources may simply state “No anticipated changes to operational resources” for this section. 

**Examples:**

| *Frontend* | *𝚫 Bundle Size (KiB)* | *𝚫 Waterfall Round Trips* | *𝚫 Filestack Usage* |
| :---- | :---- | :---- | :---- |
| *Application A* | *↑ 150 KiB* | *↑ 2*  | *↑ 1000/month, 10 GiB* |
| *Application B* | *↓ 20 KiB* | *↔ No Change* | *↑ 50000/month, 5 GiB* |

| *Backend* | *𝚫 Pod Count* | *𝚫 CPUs* | *𝚫 Memory (GiB)* | *𝚫 Disk (GiB)* |
| :---- | :---- | :---- | :---- | :---- |
| *Service A* | *↑ 10* | *↑ 10 x 2 \= 20* | *↑ 10 x 8 GiB \= 80 GiB* | *↑ 1,000 GiB* |
| *Service B* | *↓ 5* | *↔ No Change* | *↓ 5 x 1 GiB \= 5* | *↔ No Change* |

| *Mobile* | *𝚫 Install Size (KiB)* | *𝚫 Waterfall Round Trips* | *𝚫 \<other\>* |
| :---- | :---- | :---- | :---- |
| *Module A* | *↑ 150 KiB* | *↑ 2*  | *??* |
| *Module B* | *↓ 20 KiB* | *↔ No Change* | *??* |

#### Monitoring

This subsection outlines how the services in this proposal will be monitored and who is responsible for responding to failures.

All production systems should be monitored and have an accountable party when something goes wrong (i.e. an on-call rotation). Most services consider request latency—how long it takes to return a response to a request—as a key alerting metric, but other commonly used metrics include the error rate, system throughput, and availability. Refer to [Operation Excellence Guideline ](https://docs.google.com/document/d/1VTxBSWU02JRRNLYNx6E6F_tzRdeq9kq2zRsEZtz5V2A/edit) for additional guidance on specific metrics to use for unique domains.

**Key Questions:**

* What metrics will be used to evaluate the health of the system?  
* How are these metrics measured?  
* At what threshold do each of these metrics alert?  
* Who is alerted when each of the affected systems are unhealthy?

**Format Recommendations:**

Use a table for the metrics and a definition list to identify the responsible on-call parties. a Break into subsections and repeat this format for each affected service if there is more than one.

Proposals that modify existing systems or APIs which do not anticipate changes to monitoring may simply link the existing dashboard and on-call rotation for this section. 

**Examples:**

***Monitoring***  
*SPOA: \<accountable engineering manager / director\>*  
*On-Call Team: \<OpsGenie team responsible\>*

| *Metric* | *Measured Via* | *Alert Threshold* | *Alert Severity* |
| :---- | :---- | :---- | :---- |
| *Availability* | *DD APM* | *\<100%* | *P1* |
| *Error Rate* | *DD RUM* | *\>2%* | *P2* |
| *P99 Request Latency* | *DD RUM* | *\>1s* | *P2* |

### Contractual Obligations

*Optional. Many proposals may not be affected by legal obligations, but **when any of the below subsections apply, it is critical that our responsibilities are captured here**.*

The “Contractual Obligations” section describes the legal, regulatory, and compliance concerns that govern the affected areas of the proposal. The goal of this section is to highlight any requirements imposed on the systems affected by the proposal that could have serious financial or legal consequences if violated. 

#### Compliance

*Optional. Many Compass projects may not be affected by compliance concerns, but **when regulatory obligations apply, it is critical that our responsibilities are addressed here**.*

This subsection outlines how the services in this proposal may be affected by compliance or regulatory requirements.

The real estate industry has many compliance requirements originating from federal and local governments as well as individual MLS agreements. There are also increasing state-specific regulations such as [CPRA](https://oag.ca.gov/privacy/ccpa) for which Compass has instituted [data policies](https://compass-tech.atlassian.net/wiki/spaces/ENG/pages/3723919800/Data+Privacy+Compliance+Program) to consider. Authors should work with their engineering and product manager counterparts to identify any potential compliance concerns.

**Key Questions:**

* Are there any legal compliance requirements that this proposal touches?  
* How does this proposal ensure those requirements are met?

#### Service Level Agreements (SLAs)

*Optional. Most Compass projects will not have a true SLA, but **when a service is responsible for upholding an SLA, it is critical that the terms of that agreement are addressed here.***

This subsection identifies whether any service level agreements (SLAs) apply to the area affected by the proposal. An SLA is an explicit contract with the users of a system for maintaining a particular level of service.

For external SLAs, this is typically a written contract between Compass and a third-party that will contain specific penalties for violating the agreement. For internal SLAs, this is typically a broadly communicated commitment from an organization to other internal teams that a particular level of service is promised, and leaders will be held directly accountable for downstream impacts if that agreement is violated.

**Key Questions:**

* Does Compass have any contractual obligations in the areas affected by this proposal?  
* What are those contractual obligations?  
* How does the proposal ensure those obligations are met?

**Format Recommendations:**

Use 1 sentence to describe each technical requirement of any relevant SLA and 1-2 sentences to describe the implications for the design, implementation, or monitoring of the systems involved in the proposal.

**Examples:**

***Service Level Agreements***  
*Compass has a contractual obligation to pay agents their commissions within N days of transaction close. The penalty for violating this agreement is extremely steep (\<link to agreement\>) and thus payment delays must be closely monitored according to the monitoring plan outlined in \<link to section\>.*

### Alternatives Considered

The “Alternatives Considered” section outlines the alternative high-level approaches that were evaluated before the proposed solution was chosen and the reasons for selecting the current proposal over each alternative.

The “Alternatives Considered” section helps demonstrate that the proposed solution is the result of a thorough evaluation and consideration process, and provides context for the choice of the proposed solution. Each alternative should include a short summary and a discussion of the pros and cons of the approach, and, in totality, this section explains why the proposed solution was selected as the best option.

**Key Questions:**

* What other options did you evaluate that could also solve this problem?  
* Why weren’t those options selected instead of the proposed solution?

**Format Recommendations:**

Use a subsection for each alternative that was considered. The level of detail necessary for each alternative depends on the extent to which it was considered and the complexity of the overall proposal. At a minimum, use 1-2 sentences to describe the overall approach and 1-2 sentences describing the reasons why it was not selected.

**Examples:**

***Alternatives Considered***  
***Federated Approach***  
*Instead of fetching each search result from different APIs on the frontend, we could instead build a unified search API that aggregates results from each of these endpoints on the backend. While this would simplify the frontend logic considerably for this specific feature, the fact that there are still other frontend dependencies on the individual search endpoints elsewhere in the platform eliminates what would otherwise be the most attractive benefit of this option while still incurring most of the upfront cost. Ultimately, we are choosing to incur some minor additional ongoing maintenance on the frontend in exchange for keeping a lower surface area of backend to support.*

***Unified Approach***  
*Instead of preserving a search service for each domain, we could instead consolidate all search functionality into a single service with a standardized indexing and filtering format. While this would simplify all client uses of search across the platform, the high rate of change of search requirements and unique domain models in each of these areas makes standardization a challenging and costly exercise. Ultimately, we are choosing to incur some minor additional ongoing maintenance on the frontend in exchange for flexibility and decoupling of our backend services while they continue to evolve.*

### Related Documents

*Optional. Include when a specification is closely related to many other ongoing efforts that require cross-referencing.* 

The “Related Documents” section provides links to closely related content that may be helpful to reference when understanding the proposal. 

**Key Questions:**

* What other documents, knowledge base articles, diagrams, or content might the reader want to reference when understanding your proposal?

**Format Recommendations:**

Use a bulleted list with a single link or chip for each related article of content.

**Examples:**

* [*Engineering Design Reviews*](https://compass-tech.atlassian.net/wiki/spaces/ENG/pages/3838083088/Engineering+Design+Reviews)  
* *[Technical Specification Template Instructions](https://docs.google.com/document/u/0/d/1RKanCuV-aWOIWJ9NrLYPFSn_Emj6NnXkkvyWuNzz3EY/edit)*  
* *[\[Template\] Technical Specification Document Template](https://docs.google.com/document/u/0/d/1OJ7BfIb5eDot4hfWxKHE8UYO5CnRJ2w_8kHdouF2HoA/edit)*

---

Title Options
* MLS Listing Schema and Transformation Configuration
* MLS Schema Configuration System
* Centralized Schema Knowledge High Level Design

