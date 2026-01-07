---
name: tech_assessment
description: Tech assessment workflow for evaluating promotion candidates with structured review process
license: MIT
compatibility: opencode
metadata:
  workflow: assessment
  audience: tech-assessors,engineering-managers
  focus: promotion-evaluation
  phases: selection,preparation,discussion
---

# **Tech Assessments Process v1**

Last updated: Nov 5, 2024

## **Overview**

This document defines the Tech Assessment process and the interactions between Tech Assessors and key stakeholders throughout all phases of the process, including Tech Assessment Leads (Ugo, Dan, Joe), the managers representing the candidates, and the Promo Committee. 

## **Goals**

The goal of this document is to create detailed clarity about the Tech Assessment process, with particular focus on:

* What Tech Assessors can expect of others (GLs, EMs, Feedback Providers)   
* What others can expect of Tech Assessors  
* What is the timeline that we are trying to follow  
* What the minimum requirements to being a Tech Assessor, and how Tech Assessors will be selected.  
* What must be ready before Tech Assessments can take place  
* The process that Tech Assessors will follow in order to prepare their Assessments.  
* How the Assessors will interact with Engineering Managers/Group Leads before the Promo Committee  
* How Tech Assessments will be discussed in Promo Committee

## **Non-Goals**

* It’s not a goal to motivate the Tech Assessment process and why it is good for Compass  
* It’s not a goal to describe how the Tech Assessment process has been in previous cycles  
* It’s not a goal to describe alternative processes that have been discussed elsewhere

## **Tech Assessment Process**

### Phases

There are three separate phases:

* **Selection** of Tech Assessors  
* **Preparation** of the Tech Assessments  
* **Discussion** of the Tech Assessment as part of the Promo Committee ceremonies

### Tasks

The  Tech Assessment timeline is expected to have at least the following milestones and durations (example dates from the YE2024 cycle)

| PHASE | TASK | OWNER | DURATION (work days) | START | DUE |
| ----- | ----- | ----- | :---: | :---: | :---: |
|  |  |  |  |  |  |
| **Selection** | **List of promo candidates** | GLs, Org leads |  |  | 11/22/24 |
| **Selection** | **TA nominees provided** | GLs | \+12wd | 11/22/24 | 12/13/24 |
| **Selection** | **TAs assigned** | Sr leads, Org leads | \+7wd | 12/13/24 | 12/23/24 |
| **Preparation** | **Promo Packages due to TAs** | GL | – | 12/23/24 | 12/23/24 |
| **Preparation** | **TA assessment** | TAs | \+12wd | 12/23/24 | 1/9/25 |
| **Preparation** | **TA publish final assessment to EM / GL** | TAs | – | 1/10/25 | 1/10/25 |
| n/a | Final edits, if any, to new versions of promo documents from what was provided to TAs  | GLs, EMs | – | 1/9/25 | 1/13/25 |
| **Discussion** | **Promo panel** | Kira | – | 1/13/25 | 1/16/25 |

### Selection

#### Minimum requirements to be a Tech Assessor

Tech assessors should have all of the following minimum qualifications:

* IC5+  
* Working at Compass the last 2 years with 4+ ratings in their last rating  
* At least one level above the level the candidate is being assessed for.  
  * If the TA is pool is limited and it is necessary to have a TA of the  same level as as the level the candidate is being assessed for, the TA must have at least 2 years at Compass in that level with a 4+ rating over the entire term

#### How Tech Assessors will be selected

Potential Tech Assessors are nominated by Group Leads, reviewed and vetted by the Tech Assessment Leads, and approved by the Head of Engineering.

### Preparation

#### What must be ready before Tech Assessments can take place

All the Promo Package materials and Artifacts (see below) must meet the minimum bar for handoff, for the purposes of the tech assessment process.  This version must be approved by the GL of the candidate ensuring that the materials meet the quality bar and readiness..  This version will be frozen as suggestion mode only.  Edits to a promo document (if any) after it is provided to the Tech Assessor is not considered part of the Tech Assessment process, and should be done as suggestions for documentation purposes. We will not expect TAs to monitor updates; they will assess the information they are initially given.

* Promo Package  
  * Promo document  
  * Feedback  
* Artifacts  
  * Selected Design Documents demonstrating the Candidate’s design skills  
    * 3-7 Design Documents depending on size and scope. 3 documents of significant scope may be enough where more are required of smaller scope to demonstrate all the candidate’s Moving To criteria.  Use your best judgement.  
  * Selected PRs showing the candidates’ coding  
    * 5-10 PRs that show that the candidate can create code at the target level   
  * Selected PRs showing the candidates’ code reviewing  
    * 5-10 PRs that show how the candidate can review code and collaborate at the target level.  
* Productivity Metrics  
  * The Tech Assessor will ask the candidate’s EM for a screen capture of the candidate’s productivity metrics related to Github for the period being assessed (e.g. calendar year).  This includes PRs Merged, Code Reviews, Code Comments, Coding Days.

Tech Assessors should have enough available to them in the promotion package for the candidate by the start of the technical assessment process, including artifacts for review, promotion document, and feedback providers list as well as their feedback. The packages will be vetted upstream before a Tech Assessor is assigned. If incomplete, a Tech Assessor won't be assigned.

Tech Assessors will be expected to produce a technical assessment document for each candidate they are responsible for. All assessments should follow the [Technical Assessment Template](https://docs.google.com/spreadsheets/d/1vPaX71ors_H6hN4w_zUX8iX_McMQTPXSMd92X5FD3bk/edit?gid=1130189517#gid=1130189517) and result in a formal **Not Inclined** or **Inclined** recommendation. Sub sections are expected to be rated on a scale of 1-7, following the established scale for performance reviews where 4 \= meets expectations for the targeting promotion level, and candidates for which the TAs are inclined should have 4+ in most subsections.  Please read [Appendix: Rating the Dimensions](#appendix:-rating-the-dimensions).

Each Tech Assessor is responsible for their own assessments \- the Tech Assessment Leads may provide supervision and help as required, but the Assessors have the power and responsibility to take their own decision.

During the assessment, the Tech Assessors should be given space to assess independently, without influence by the nominee’s management or feedback providers. Tech assessors may ask for clarity from anyone they see necessary, including the Tech Assessment Leads for guidance.

The technical assessment template and document is intended to be both rubric used by the technical assessor to come to an inclined/not-inclined conclusion and as a means to record data collected and assessed during the course of the assessment. The collected data for the technical assessment should fall into the following categories:

##### Feedback provider interviews

Tech assessors are expected to meet with feedbacEngineering managers will be responsible for working with their promotion candidates and providing a comprehensive list of 3-7 **representative design documents (or similar artifacts) for review** as part of this process.

During the assessment period, assessors will rek providers to ask follow up questions about feedback and assess the quality of feedback in terms of the **quality of first hand evidence** and **time frame covered** in order to get a sense of the overall strength of the feedback

##### Review design documents (or similar artifacts)

view the artifacts provided and assess them at the current level of the candidate (ex. IC4) based on the following characteristics: ambiguity, complexity, design depth, design quality, socialization, maximization of strengths, usage of golden path, reusability, reliability, simplicity, and consistency.

##### Quality & Frequency of PRs and PR reviews

Tech assessors should review the candidate’s Compass Github contributions in order to get a sense of the quality regularly displayed of: 1\) their own code contributions, and, 2\) the code reviews and comments they provide as feedback to other engineers.  Tech assessors should provide feedback on a sample of the candidate’s PRs including:

* The PRs provided in the Promo Package, plus,   
* The assessor’s sample of an additional  \~5-10 PRs authored by the candidate as well as \~5-10 PRs reviewed by the candidate 

The PRs sampled should be recorded and judged using the tech assessor's best ability at the current level of the candidate (ex. IC4), considering things like \- Is feedback useful and thoughtful? Does the candidate enforce best practices? Does the candidate implement best practices themselves? Does the candidate enforce/provide a high level of quality? Is the code unit tested? Etc.

### Discussion

#### How the Assessors will interact with Engineering Managers/Group Leads before the Promo Committee

As noted previously, during the assessment, the Tech Assessors must not communicate about the Assessment with anyone (outside of Tech Assessment Leads) \- including the EM and GL of the candidate for promotion.

As soon as an assessment is ready, and before the end of the scheduled assessment period, the Tech Assessor will release the final version of the written assessment to the EM and GL of the promo candidate. Each Tech Assessor will set up a 30 minutes meeting with the EM of the promo candidate (or whoever is going to represent the candidate in front of the promo committee) to discuss any questions about the assessment.

The assessment will NOT be changed after it is published \- independently of the conversations with the EM and/or of the final edits that may be done to the promo package. Exceptions may be authorized only by the Head of Engineering.

#### How Tech Assessments will be discussed in Promo Committee

The Tech Assessor will present their assessment in front of the Promo Committee. The EM of the promo candidate (or whoever is representing the candidate) will be present during the presentation.

The presentation will be in three phases:

* The Promo Committee will be given time to read the Assessment  
* The Tech Assessor will provide a brief overview of their findings (about 2 minutes)  
* The Tech Assessor will be available for clarifications about their Assessment

The Tech Assessor will stay in the meeting during the presentation of the promo doc and subsequent discussion in order to be available for further clarifications. At this point, they will be considered a guest and they should only intervene if members of the Promo Committee requests them to.

## **Key Decisions**

* Tech Assessors are nominated from the IC5+ population by Group Leads, reviewed and vetted by the Tech Assessment Leads, and approved by Yotam and Jim.  
* All Promo Package materials and Artifacts must be in a good enough state (and not too far from its final state) before a Tech Assessor begins their assessment  
* Tech Assessors are responsible for their own assessments, but may seek guidance from Tech Assessment Leads when necessary  
* During the assessment, the Tech Assessors must not communicate about the Assessment with anyone outside of that group \-  (including the EM and GL of the candidate for promotion) except the Tech Assessment Leads for guidance. This protects the privacy of the Assessment process and shields the Tech Assessors from being asked for “an early peek” in their recommendations  
* Assessments will be published and made reviewable to GL’s and managers so they can ask followup questions, but assessments will not be changed after they are published  
* Any edits to Promo Packages after they are provided to Tech Assessors, should be done in a new version of the documents, so that there is clarity on what was available to the Tech Assessors.  
* Tech Assessors will present their assessments to the Promo Committee and answer any clarifying questions the committee might have

## **Appendix: Rating the Dimensions** {#appendix:-rating-the-dimensions}

Use the same 1-7 rating system as annual review cycle but for the promo level being assessed.  Use your best judgement in rating each dimension (ex. Ambiguity, Simplicity, etc.) and read all the information below to help calibrate your assessment.

Note the standard rating definitions (below) have been slightly modified to be more general, since we are also rating artifacts in addition to overall performance.

| Rating | Rating Description | Definition |
| ----- | :---- | :---- |
| 1 | Does not meet expectations | Significantly below expectations. |
| 2 | Meets some expectations | Meets expectations in some ways while being below in other ways. |
| 3 | Meets most expectations | Meets most expectations, though some are missed. |
| 4 | Meets all expectations | Solidly meets all expectations. |
| 5 | Exceeds expectations | Exceeds expectations in some ways and solidly meets expectations in all other ways. |
| 6 | Greatly exceeds expectations | Exceeds expectations in almost all ways. |
| 7 | Redefines expectations | Consistently outstanding and resets the bar.  |

Please refer to the [Compass Software Engineer (SE) Role Description for a software engineer being assessed, or a similar document for other roles (ex. Security, ET, TPM) if applicable. If a dimension is not applicable to the role, mark it as “n/a”.](https://docs.google.com/document/d/1KVGWTecxroDX-TwbcKjP34zGr8mdXb5N/edit#heading=h.gjdgxs)

[*Given all the information* (below) refers to:  *Given all the supporting feedback, artifacts, code, code reviews, code comments, and productivity metrics…*](https://docs.google.com/document/d/1KVGWTecxroDX-TwbcKjP34zGr8mdXb5N/edit#heading=h.gjdgxs)

| Dimension | Overall |
| :---- | :---- |
| Mentoring | [*Given all the information*](https://docs.google.com/document/d/1KVGWTecxroDX-TwbcKjP34zGr8mdXb5N/edit#heading=h.gjdgxs), how much has the candidate demonstrated in mentoring others on their team, group, and the org for the level being evaluated?  Refer to “Scope of Influence” in the matrix in the Role Description document. |
| Maximize Strengths | [*Given all the information*](https://docs.google.com/document/d/1KVGWTecxroDX-TwbcKjP34zGr8mdXb5N/edit#heading=h.gjdgxs), how much has the candidate demonstrated in maximizing the strengths of themselves and others (on their team, group, the org) for the level being evaluated?  Refer to “Scope of Influence” in the matrix in the Role Description document. |
| Code Reviews: Frequency | Given the Code Reviews productivity metric, how much has the candidate demonstrated engagement in the code review process for their team, group, and the org for the level being evaluated?  Refer to “Scope of Influence” in the matrix in the Role Description document. Note: Percentiles by level for this metric are available upon request. |
| Code Comments: Frequency | Given the Code Comments productivity metric, how much has the candidate demonstrated engagement leaving specific feedback in the form of PR comments for their team, group, and the org for the level being evaluated?  Refer to “Scope of Influence” in the matrix in the Role Description document. Please discount this rating as applicable to the extent you found no-op comments (ex. “LGTM”) in your PR quality audit.  Note: Percentiles by level for this metric are available upon request. |
| Code Reviews: Quality | Given your auditing of the candidate’s feedback on other engineer’s PRs, how much has the candidate demonstrated that the feedback benefits the overall outcome, strategy, reliability or efficiency of the change (e.g. versus tactical comments about improving a particular line of code). |
| Code Comments: Quality | Given your auditing of the candidate’s comments on other engineer’s PRs, how much has the candidate demonstrated that the comments are high-quality, useful, and actionable versus no-op comments like “LGTM” |
| Code Productivity | Given the candidate’s own PRs Merged productivity metric, how much has the candidate personally demonstrated frequency of code contributions? |
| Code Quality | Given your auditing of the candidate’s own PRs, how much has the candidate demonstrated code quality in the form of strategy, efficiency, reliability, simplicity, and reuse for the level being evaluated? |

| Dimension | Overall \- Technical | Artifacts |
| :---- | :---- | :---- |
| Ambiguity | Refer to “Expected Level of Ambiguity” in the matrix in the Role Description document. | Not was the artifact ambiguous, but how much and how well does the artifact deal with ambiguity for the level being evaluated? |
| Consistency |  |  |
| Complexity | Refer to “Technical Complexity” in the matrix in the Role Description document. | Not was the artifact complex, but how much and how well does the artifact deal with complexity for the level being evaluated? |
| Design Depth | Refers to the level of thoroughness, detail, and sophistication included in the design solution. It measures how deeply the design addresses both the functional and non-functional requirements of the project, as well as how well it anticipates potential issues and scalability concerns |  |
| Design Quality | Overall effectiveness of the design solution in meeting both the functional and non-functional requirements. It measures how well the design balances various factors such as performance, usability, maintainability, scalability, security, and cost-effectiveness.  |  |
| Socialization | The extent to which the design has been shared and reviewed across relevant stakeholders and domains. It involves distributing the design proposal to a broad audience to ensure that it is vetted by a diverse set of reviewers who can provide feedback from various perspectives | An artifact with high socialization will have a high number of reviews/commenters and will have been socialized broadly with relevant teams. |
| Maximize Strengths |  |  |
| Golden Path | The adherence to established guidelines, best practices, and recommended technologies by the Compass golden path and prioritization of long-term system health, operational excellence, and minimal technical debt |  |
| Reuse | The degree to which the design incorporates components or patterns that can be reused across different parts of the system or in future projects. | An artifact with high reusability focuses on creating/leveraging modular, flexible, and general-purpose components that reduce duplication of effort and encourage consistency. |
| Reliability | The dependability and robustness of a proposed design in terms of its ability to consistently perform its intended function under specified conditions and over time. | An artifact with high reliability will have considered a high number of risks and concerns as well as scalability and stability over time. |
| Simplicity | The degree to which the design is straightforward, clear, and easy to understand, while still effectively solving the problem at hand. | An artifact with high simplicity avoids unnecessary complexity, over-engineering, or convoluted solutions.  |

# Compass Software Engineer Role Description

The purpose of this document is to describe the general expectations of the Software Engineer (SE) role at Compass and what it takes to advance to each SE level, from Software Engineer up to Principal Engineer.  
   
Each part of the document has a specific purpose:

* **Section 1: “SE Level Matrix”** is a high-level view of how SE functional expectations map to each level. It intended for quick comparisons of level vs. role expectations in hiring debriefs and performance discussions.  
* **Sections 2-6:** “**What you do**” by each SE level contains the most detail about job level expectations to guide team hiring strategies and SE performance discussions.  
* **Sections 2-6: “Moving to…”** bullets isolate key skills at the next level that the company would like to see SEs consistently demonstrate before promoting to the next level. This section is intended to guide you when setting stretch goals. While it is tempting to use this section as a checklist, keep in mind that these are aspects of performance that will trigger *consideration* for promotion. Every promotion case is unique; the results delivered and *how* they are delivered also play a big role in promotion evaluations.

Your level is an acknowledgement that you demonstrate most or all of the skills outlined in both *current* and any *previous* *levels*. When looking towards the next level be sure to review all level expectations, up to and including that level. 1 SE Level Matrix

The purpose of the SE Level Matrix is to provide a quick view of how SE functional dimensions change by level. For more detailed level expectations and criteria for moving to the next level, please refer to sections 2-6.

## 1.1 SE Functional Dimensions

The SE functional matrix utilizes the dimensions listed below to describe the role expectations at different levels. Each level above IC2 should be able to handle the expectations of the levels below.

* **Ambiguity**:  Degree of independence. Level to which requirements and scope are defined.  
* **Scope of Influence**: Influence over design, architecture, technical strategy, product features, etc. Degree of influence developing others, actively listening to peers, solving conflicts and driving engineering best practices.  
* **Advises:** Who engineers collaborate with and influence.  
* **Technical Complexity**: Degree of difficulty, efficiency, extensibility, optimization to expect. Ability to deconstruct and simplify problems. Innovation scope.  
* **Impact**: System size and importance. Business Impact. Breadth/Depth orientation.  
* **Execution**: Effectiveness of software delivery – as evidenced by timeliness, quality, operational stability and success of meeting customer requirements/business objectives.  
* **Process Improvement**: Improvement of the development process (i.e., package management, build, test, release/deploy, monitor, etc.). Focus on customer experience, operational excellence, software resilience, maintainability, and security.  
* **Knowledge and Judgment**: Understanding of successful design, data structure, and algorithm patterns. Ability to make good decisions that consider the whole picture including balancing difficult short-term and long-term tradeoffs.

## 1.2 SE Level Matrix

|  | Software Engineer  |  | Senior Software Engineer  |  | Staff Software Engineer | Senior Staff Software Engineer | Principal Engineer |
| :---- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **Dimension** | **IC1** | **IC2** | **IC3** | **IC4** | **IC5** | **IC6** | **IC7** |
| **Expected Level of Ambiguity** | Problem defined. Implementation is not. May need guidance from manager/peers. |  | Technical strategy is defined. Component design is not. Trusted with more autonomy. Seeks direction at times. |  | Business problem is defined but the team technical strategy is not. Delivers with limited guidance. | Architectural strategy is not defined. May not know what the problem is before starting. Delivers with complete independence. | Thought leaders. Discover opportunities for long term success of the organization and the company. |
| **Scope of Influence** | Self. Collaborates with peers.  | Collaborate with peers, Mentor SE interns, and position themselves as the SME on a reduced but precise subject. | Influence is primarily within a team (at the product level). Begins to mentor and develop peers. | Influence teams software architecture; influence within the same product line, across teams/squads. | Influences team software architecture and organization. Actively mentors/develops others. Performs IC1-4 promo assessments. | Influences business and technology direction for a department. Aligns teams toward simple, coherent designs. Actively develops others. Mentors IC5s. Performs IC6 promo assessments. | Influences business and technology direction for the company. |
| **Advises** | Peers Understands the OKR, knows how their team affects the OKRs. |  | Managers, Software Engineers, Sr. Software Engineers Influences the team OKR definition and measurement. |  | Managers, Sr. Managers, Engineers Contributes to the OKR conception. | Director/VP, Broader Tech Community. Contributes to the OKR conception. | Director/VP, C-Suite, Broader Compass Community. Contributes to the OKR conception. |
| **Technical Complexity** | Solves straightforward technical problems. Solutions may need rework. | Solves straightforward technical problems with solutions that require little rework. | Solves complex technical problems. Solutions are testable, maintainable, and efficient. | Solves complex technical problems. Solutions can be used across teams. Acknowledges technical complexities for other teams. | Break a complex problem into manageable smaller problems. Drive the simplification of existing and new Software Architecture. | Solves significantly complex or endemic problems. Architectures are exemplary in terms of robustness, stability, scalability, cost-effectiveness. Identify gaps and opportunities to implement transformational technology | Drive innovation.  Seeks out forward looking technology. |
| **Impact** | Works at the smaller component level with some help, including small tools and applications | Works at the smaller component level independently. Works with mid-sized components (components of components), mid size tools with help | Works with mid-sized components independently. Works on large components with help, applications, software or services. | Works on large components independently, applications, software or services. | Works on the team's architecture. Designs/code impact key dependencies, yield significant optimization, availability, or business value. | Works on large-scale architecture. Uses broad expertise or unique knowledge to impact systems and how the organization operates. | Company/corporation wide architectural decisions. |
| **Execution** | Develops successful software solutions to meet customer needs. |  | Successfully launches software that improves a major portion of a product or application. |  | Successfully launches software for the business or that resolves architecture deficiencies. May require members of *team* to execute. | Successfully launches projects with significant complexity or that improve larger architecture deficiencies. May require more than one *team* to execute design. |  |
| **Process Improvement** | Understands operational metrics and monitors. | Improves operational metrics, and monitors. | Automates and simplifies team development and operations processes. |  | Leads projects to improve engineering and operational excellence best practices on a team. | Sets the standard for engineering and operational excellence, drives best practices across the organization. | Scouts and find operational excellence opportunities and future best practices. |
| **Knowledge (Judgment)** | Learning team software architecture. Actively seeks knowledge and applies to software solutions. |  | Knows team-specific software architecture, still learning more in-depth details. Actively seeks deeper knowledge and applies to software solutions.  |  | Has detailed knowledge of team software architecture. Makes technical trade-offs between short term team needs and long term business needs. | Understands organization architecture. Influences priorities/trade-offs. Applies knowledge to invent, evolve, improve, simplify, etc. | Industry-wide knowledge. |

## 2 Software Engineer (IC1 and IC2)

### 2.1 Scope and Impact

Software Engineers work and deliver results within their team, and operate on well-defined projects within a software product or initiative. Influences peers and becomes the SME of a particular technology or methodology. Deliver results that move the needle for a project(s) within their team. 

### 2.2 What you do…

You use technology to solve straightforward problems, seeking input and guidance from team members. Your scope of work is at the small to midsize component or feature level. You may create or have the responsibility to improve or invent small tools or applications. You are able to take a defined design and turn it into code and deliver it on schedule, applying appropriate technologies and current software engineering best practices. You write secure, stable, testable, maintainable code with minimal defects. You are proficient in a broad range of data structures and algorithms, knowing when it is appropriate to use them (and when it is not). You make appropriate implementation trade-off decisions (e.g., array or hash table?). You do not put the company at risk (e.g. pulling in GPL code, working on code in unsafe ways, etc.). You participate in team design, scoping and prioritization discussions. You seek to learn the business context and technologies behind your team’s software. You work effectively with customers and/or internal partners to understand business impacts and identify any opportunities/problems arising from technical decisions. You invent, refine and develop your solutions to ensure they are meeting customer needs and team goals. You are a passionate advocate for your customers.  
   
You assume responsibility for the state of the code you both inherit and produce. You get your designs and code reviewed. You test code thoroughly. You classify, store, and handle data in accordance with Compass policies. You track security risks and mitigate and/or escalate them in a timely manner. You understand the maintenance characteristics, runtime properties, and dependencies of your team’s software, including hardware platform, operating system and build dependencies. You clearly document your software to ensure that future generations of developers understand the intention behind the features and components you build. In the event of a problem, you are able to troubleshoot, research the root cause of problems, and thoroughly resolve defects. You provide excellent customer support. You take ownership of problems (even when outside your own domain), propose solutions, and either take ownership of their resolution or ensure a clear hand-off to the right owner. You participate in the interview process and help your team train and mentor SE interns.

### 2.3 Moving from Software Engineer I to Software Engineer II

You will be considered for promotion to Software Engineer II if you consistently demonstrate a combination of the following:

* You produce code that requires little churn and re-work and generate small to no tech-debt. This product actively contributed to the product or services your team owns.  
* You create high-quality tests for your code and the features you are contributing to.  
* You are able to work independently on small components and require little help to deliver mid-size components.  
* You contribute to operational excellence on your team, for example by improving monitoring and operational metrics for your team’s products or services.  
* You are the subject matter expert for your team on at least one precise topic — you become the go-to person for technical matters regarding that topic. 

### 2.4 Moving to Senior Software Engineer I                      	

You will be considered for promotion to Senior Software Engineer I if you consistently demonstrate a combination of the following:

* You design, implement and deploy software components that solve complex problems generating positive feedback.  
*  You have a solid understanding of design patterns and how to best use them.  
*  You are able to work independently and with your team to deliver software successfully.  
* Your work is consistently high quality (e.g., secure, testable, maintainable, low-defects, efficient, etc.) and incorporates best practices. Your team trusts your work.  
* Your code reviews tend to be rapid and uneventful. You provide useful code reviews for changes submitted by others.  
* You focus on operational excellence, constructively identifying problems and proposing solutions, taking on projects that improve your team’s software, making it better and easier to maintain.  
* You make improvements to your team’s development and testing processes.  
* You have established good working relationships with teammates and peers working on related software. You recognize discordant views and take part in constructive dialogue to resolve them.  
* You are able to confidently train new teammates about your customers, what your team’s software does, how it is constructed, tested, operates, and how it fits into the bigger picture.	

## 3 Senior Software Engineer (IC3 and IC4)

### 3.1 Scope and Impact

Senior Software Engineers work on projects that involve multiple teams as well as their own team and may work across organizations. Influences member of their teams and teams within their organization and delivers results that move the needle for their team and contributes to the achievement of the OKRs. 

Tech Lead: Starting at IC4 a Tech Lead is an engineer that assumes ownership/accountability (in conjunction with applicable engineering manager(s)) of engineering deliverables, planning, and realistic roadmap for their team/domain to achieve incremental business outcomes and ROI.

### 3.2 What you do…

You are a significant and autonomous contributor. Your work is consistently high quality. You solve complex problems, applying appropriate technologies and best practices. Your focus is on a major portion of existing or new team software (e.g., significant component, set of features, mid-size application or service). You work with your team to invent, design and build software that is stable and performant. You write code that a SE unfamiliar with the system can understand. Your solutions are pragmatic. You are proficient in a broad range of design patterns and know when it is appropriate to make trade-offs. You do things with the proper level of complexity the first time. You consider the legacy of the code you produce, limiting the use of short-term workarounds. You create flexible software without over-engineering. You re-use where possible while being judicious about introducing dependencies. You are efficient with resource usage (e.g., system hardware, database, memory/CPU, etc.)  
   
You work on project ideas with customers, stakeholders, and peers. You help balance customer requirements with team requirements. You help your team evolve by actively participating in the code review process, design discussions, team planning, and ticket/metric/COE reviews. You focus on operational excellence, constructively identifying problems and proposing solutions. You take on projects and make software enhancements that improve team software and processes. You work to resolve the root cause of complex problems, leaving software better and easier to maintain than when you found it. You are able to train new team-mates on how your team’s software is constructed, how it operates, how secure it is, and how it fits into the bigger picture. You foster a constructive dialogue and seek resolutions in a professional way. You help recruit and interview and develop others by making yourself available to mentor.

### 3.3 Moving from Senior Software Engineer I to Senior Software Engineer II

You will be considered for promotion to Senior Software Engineer II if you consistently demonstrate a combination of the following:

* You have solid software architecture skills and influence and poke holes in the software architectural decisions of your team and the teams working on the same product lines as yours.  
* You produce technical solutions and components that can be reused not only by your team but by other teams within the organization as well.   
* You identify technical complexity in products and services and work with teams to simplify these complexities.  
* You independently deliver large software components that provide substantial business value or impact a major area of business (ex. new features that improve customer productivity by 30% or reduce operational cost by twofold).  
* You actively contribute to increasing your teams’ productivity by automating  and simplifying the team’s development practices.  
* You actively participate in the hiring process and strive to constantly raise the bar on interviews, debriefs, and hiring events.  
* You help reduce operational inefficiencies on your team by suggesting, creating and applying the right tools and processes.

### 3.4 Moving to Staff Software Engineer

You will be considered for promotion to Staff Software Engineer  if you consistently demonstrate a combination of the following:

* You lead the design, implementation, and delivery of successful large-scale, critical and/or highly complex software or software effort involving significant work. This can take the form of new software or refactoring of existing software. You heavily influence the design and write a significant portion of the “critical-path” code.  
* You think in terms of not just code but of architecture. You have detailed knowledge of the work done by your team and proactively work to improve consistency and integration between your software and related software (owned by other teams).  
* You influence your team’s technical and business strategy by making insightful contributions to team priorities and approaches. You take the lead in identifying and solving ambiguous problems, architecture deficiencies, or areas where your team’s software bottlenecks the innovation of other teams.  
* You are able to communicate your ideas effectively to achieve the right outcome for your team and customers. You harmonize discordant views and lead the resolution of contentious issues (build consensus).  
* You lead design reviews for your team and actively participate in design reviews of related software or other team software at your location.  
* Your code, designs and implementation decisions set a great example to others. You provide insightful code reviews and take ownership of the outcome. (“You ship it, you own it”) You work very efficiently and routinely deliver the right things.  
* You demonstrate technical influence over 1-2 teams, either via a collaborative software effort or by increasing their productivity and effectiveness by driving software engineering best practices (e.g., Security, Quality, Operational Excellence, etc.).  
* You actively participate in the hiring process as well as mentor others \- improving their skills, their knowledge of your software, and their ability to get things done. Your interviewing practices set an example for others.  
* You identify and remove barriers, roadblocks, and inefficient processes that are creating operational overhead and inefficiencies, or prevent the flow of information or ideas throughout the organization.

## 4 Staff Software Engineer (IC5)

### 4.1 Scope and Impact

Staff engineers work on projects that impact the organization and involve multiple teams. Influences teams outside of their own organization and delivers results that move the needle at the organizational level and impact the OKRs.

### 4.2 What you do…

You are considered a technical leader for your team. You work efficiently and routinely deliver the right things with limited guidance. Your work focuses on ambiguous problem areas in existing or new software initiatives. You take a long term view of your team’s software and how it fits into the architecture. You proactively fix architecture deficiencies and/or propose larger projects, which may require the work of your *team*. You split that work into parallel tasks that can be performed by you and others and then reassembled successfully.  
   
You understand the business impact of your systems and show good judgment when making technical trade-offs between your team’s short-term technology or operational needs and long-term business needs. You are a key influencer in team strategy. You drive mindful discussions with customers and peers. You bring perspective and provide context for current technology choices and guide future technology choices. You understand that not all problems are new (or require new software). You make appropriate architectural trade-offs (e.g., coarse or fine-grained service separation?) Your code submissions and approach to work are exemplary – your solutions are inventive, secure, easily maintainable, appropriately scalable, and extensible. You write software that is easy for others to contribute to.  
   
You take ownership of team architecture, providing a system-wide view and design guidance. You make things simpler. You drive engineering best practices (e.g., Operational Excellence, Security, Quality, etc.) and set standards. You work to resolve the root cause of endemic problems including areas where your team limits the innovation of other teams (bottlenecks). This may require you to influence software decisions made by *other* teams. When confronted with discordant views, you are able to find the best way forward and influence others to follow that path (build consensus). You actively recruit and help others leverage your expertise, by coaching and mentoring in your organization or at your location. You provide technical assessments for promotions to IC3-4 and IC5-6. You contribute to the professional development of colleagues, improving their technical knowledge and engineering practices on your team. You ensure your team is stronger because of your presence but does not require your presence to be successful.

### 4.3 Moving to Senior Staff Software Engineer

You will be considered for promotion to Senior Staff Software Engineer if you consistently demonstrate a combination of the following:

* You take the lead on the design, implementation, and successful delivery of large-scale or significantly complex software that has a long-term impact on a product, technology or architecture. Your design and the code you personally contribute is noteworthy in some way (e.g., a significant refactor that simplifies/improves architectural quality, creates/enables us to maintain a competitive advantage, or has significant extensibility, performance, scalability, or organization-wide operational excellence impact).  
* You identify and tackle intrinsically hard problems. (e.g., highly complex, ambiguous, undefined, with minimal structure, or having a significant business or security risk or potential for significant impact).  
* You deliver artifacts that set the standard within your organization for engineering excellence, from designs to algorithms to implementations. Your personal code submissions and reviews of other people’s code are instructive and make the overall code corpus better.  
* You lead and actively participate in design reviews, aligning teams across your organization towards coherent architectural strategies. You bring clarity to complexity, probe assumptions, illuminate pitfalls, and foster shared understanding.  
* You are a pragmatic problem solver, applying judgment and experience to balance trade-offs between competing interests. You are flexible, adapting your approach to meet the needs of the team, project, and product.  
* You actively recruit for Compass as well as participate in the hiring/interview process.  
* You play a significant role in the career development of others, actively mentoring and educating the larger SE community on trends, technologies, and best practices.  
* You keep abreast of industry trends. You effectively research and benchmark our technology against other competing software in the industry. You understand that many problems are not essentially new.  
* You contribute to intellectual property (e.g., invent, submit patents, etc.)   
* You identify and remove barriers, roadblocks, and inefficient processes that are creating operational overhead and inefficiencies, or prevent the flow of information or ideas throughout the organization.

## 5 Senior Staff Software Engineer (IC6)

### 5.1 Scope and Impact

Senior Staff engineers work on programs and projects that impact the department and involve multiple organizations. Influences teams and organizations within and outside the department and delivers results that move the needle at the department level and significantly impact the OKRs.

### 5.2 What you do

You are a trusted part of the technical leadership of an organization, typically at the VP level. As a key influencer in planning strategy, you bring business and industry context to technology decisions. You set the standard for engineering excellence in your organization. Your architectures are exemplary in terms of efficiency, stability, extensibility, and the ability to evolve over time. You simplify processes and technologies. Your software is robust in the presence of failures, scalable, and cost-effective. Your coding practices are exemplary in terms of code organization, clarity, simplicity, error handling, and documentation. You tackle intrinsically hard problems, acquiring expertise as needed. You decompose complex problems into straightforward solutions. You propose projects that may require the work of several teams to implement; you divide responsibilities so that each team can work independently and have the system come together into an integrated whole. You are flexible, adapting your approach to meet the needs of the team, project, or product. You solicit differing views and are willing to change your mind as you learn more. You are adept at building consensus.  
   
As a “hands-on” technical leader, you are accountable for portions of the architecture, which includes taking ownership of the design and quality of the security, performance, availability, and operational aspects of the software built by one or more teams. You split your time between coding, design, and architecture based on where your skills will have the greatest impact (or in response to job requirements). For example, your expertise may be broadly applied – spread across many teams – involved in the technical strategy, design, and delivery of a significant portion of the architecture. Or you may personally produce code for significant, critical, or demanding software and influence just a few teams close to it. The exact role you play may also change as a larger initiative progresses; during the early phases, broadly influencing several related teams and then subsequently spending weeks or months focusing on a particularly challenging system. Sometimes the mix goes the other way and you spend most of your time broadly influencing multiple teams while occasionally taking a deep dive into a critical or complex area within a particular team.  
   
You amplify your impact by leading design reviews for complex software and/or critical features both within your organization or at your location. You probe assumptions, illuminate pitfalls, and foster shared understanding. You align teams toward coherent architectural strategies. You educate, keeping the engineering community up to date on advanced technical issues, technologies, and trends. You participate, sharing knowledge and collaborating with other Senior Engineers, specifically attending and/or presenting at internal conferences, Engineer community events and making yourself available to global developer outreach efforts. You help managers guide the career growth of their team members by mentoring, performing Senior Staff Engineer promotion assessments, and participating in performance discussions.

### 5.3 Moving to Principal Engineer

You will be considered for promotion to Principal Engineer if you consistently demonstrate a combination of the following:

* You are a recognized thought leader for the organization providing strategic assistance and guidance on technical decisions.  
* You actively identify opportunities for the long-term success of the company by simplifying technology, devising new methods and processes, etc.  
* You are trusted to advise executives (VPs and C-suite) on strategic decisions and actively contribute to defining company-wide OKRs.  
* You are constantly exploring new avenues for technology and applications within the company, and influence architectural decisions that will impact the company’s long term outlook.  
* You successfully launch and execute projects with a company-wide impact that requires the involvement of several teams across several organizations.  
* You scout and exploit opportunities to improve our operational excellence and software quality and strive to evangelize our engineering body about those opportunities  
* You relentlessly look for opportunities to raise our hiring bar, actively hire top talent, and develop our engineers.

## 6 Principal Software Engineer (IC7)

### 6.1 Scope and Impact

Principal engineers work on programs and projects that impact the organization and the company overall. Influences multiple teams within and outside their organization, and other organizations.  Delivers results that move the needle at the organization and company levels and significantly impact/drive the company OKRs.

### 6.2 What you do

You are a trusted part of the technical leadership of the company overall, with credibility and influence at the VP and C-suite level.  You demonstrate extensive experience and depth of knowledge in business, technology, execution, operations, and innovation, and your credibility, insights, perspectives, and enthusiasm establish you as a thought leader within the company.   You are a key influencer in planning architecture, strategy, technology decisions, and major programs.  You help lead the technical due diligence, planning, onboarding, and integration of new organizations into the company (ex. via acquisition) in your engineering capacity.  You proactively get involved where needed to guide and drive, take action where off track or improvements are needed, resolve conflicts, and drive convergence to optimal outcomes and solutions.  You develop relationships and maintain a high level of visibility across the company that makes it easy for others to consult with you and ensure you are current on the state of company technology, plans, and programs.   You recommend, plan, architect, direct, and deliver innovative solutions for the company across organizations, maximizing their strengths.  You proactively identify/anticipate where attention is needed to solve current/future organizational issues, create visibility, influence change, avoid roadblocks, and ensure key company objectives can be achieved. You set the standard for engineering excellence for the company.  Your architectures are exemplary in terms of efficiency, stability, extensibility, and the ability to evolve over time,  You drive others to these same standards both indirectly via leading and mentoring, and directly via evangelizing, motivating submissions to SARG, and formation/participation in cross-organization working groups to raise the bar on technical and operational excellence..  You find opportunities to simplify processes and technologies not only within but across multiple organizations and influence their adoption. Your software is robust in the presence of failures, scalable, and cost-effective.  Your coding practices are exemplary in terms of code organization, clarity, simplicity, error handling, and documentation.  You identify and tackle coding best practices, patterns, and efficiencies across the company via reusable reference materials, templates, code generation, tooling, and also directly through reviews, training, and mentoring.  You tackle intrinsically difficult problems that deliver major company-wide impact, acquiring expertise as needed. You are a simplifier and decompose complex problems into straightforward solutions with actionable plans. You propose projects that may require the work of several teams and organizations to implement; you divide responsibilities so that each team can work independently and have the system come together into an integrated whole. You are flexible, adapting your approach to meet the needs of the organization, team, project, or product. You solicit differing views and are willing to change your mind as you learn more. You are adept at socializing ideas and plans, motivating action, and building consensus across teams, organizations, and the company as a whole.

As a “hands-on” technical leader, you are accountable for portions of the architecture, which includes taking ownership of the design and quality of the security, performance, availability, and operational aspects of the software built by one or more teams and organizations. Typically the end result of your efforts results in best practices, patterns, and/or automation that significantly improve operational efficiencies across the company.  You split your time between coding, design, and architecture based on where your skills will have the greatest impact (or in response to job requirements). For example, your expertise may be broadly applied – spread across many teams – involved in the technical strategy, design, and delivery of a significant portion of the architecture. Or you may personally produce code for significant, critical, or demanding software and influence just a few teams close to it. The exact role you play may also change as a larger initiative progresses; during the early phases, broadly influencing several related teams and then subsequently spending weeks or months focusing on a particularly challenging system. Sometimes the mix goes the other way and you spend most of your time broadly influencing multiple teams while occasionally taking a deep dive into a critical or complex area within a particular team or organization.

You amplify your impact by leading working groups and design reviews for complex software and/or critical features both within your organization or at your location. You probe assumptions, illuminate pitfalls, and foster shared understanding. You align teams toward coherent architectural strategies. You educate, keeping the engineering community up to date on advanced technical issues, technologies, and trends. You participate, sharing knowledge and collaborating with other Senior Engineers, specifically attending and/or presenting at internal conferences, Engineer community events, and making yourself available to global developer outreach efforts. You help managers guide the career growth of their team members by mentoring, performing IC5-IC7 promotion assessments, and participating in performance discussions.  
