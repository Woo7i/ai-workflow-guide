# AI Agent Quick Guide

A 3-stage structure-based prompt guide for efficient collaboration with AI agents

## 🎯 Core Principles

AI agents quickly understand project context through the **3-stage structure**:

1. **Story** - Overall Direction
2. **Continuity** - Current Status
3. **Backup** - Completion Records

## 📋 Story - "What to Build"

### Prompt Examples

```
"Check overall project direction"
"Tell me about backlog status"
"Plan next Sprint"
"Understand overall project flow"
```

### Files to Check

- `docs/project-management/backlog.md` - Overall backlog
- `docs/project-management/sprints/` - Sprint plans
- `docs/project-management/stories/` - Individual Stories

### Expected Response

- Overall project goals and direction
- Current Sprint status
- Next Sprint plan
- Overall backlog priorities

## 🔄 Continuity - "How to Build"

### Prompt Examples

```
"Understand current work context"
"Where are we now?"
"What's the next task?"
"Summarize current status"
```

### Files to Check

- `docs/project-management/README.md` - Project overview
- `docs/project-management/current-status.md` - System status
- `docs/guides/AI_AGENT_QUICK_GUIDE.md` - This file

### Expected Response

- Currently ongoing work
- Next step plans
- System current status
- Work priorities

## 💾 Backup - "What Has Been Completed"

### Prompt Examples

```
"Review completed work"
"How's the progress?"
"Update backlog"
"Organize completion records"
```

### Files to Check

- `docs/project-management/progress-tracking.md` - Completion records
- `docs/project-management/backlog.md` - Completion status indication

### Expected Response

- Completed work list
- Progress statistics
- Connection points to next work
- Completion record summary

## 🚀 Practical Usage

### 1. Project Start

```
"Understand overall project situation"
```

→ Check Story + Continuity + Backup overall

### 2. Before Starting Work

```
"Understand current work context"
```

→ Check Continuity-centered

### 3. After Work Completion

```
"Update completion records"
```

→ Update Backup

### 4. Sprint Planning

```
"Plan next Sprint"
```

→ Check Story-centered

## 📁 File Structure Understanding

```
docs/project-management/
├── README.md              # Continuity - Current Status
├── current-status.md      # Continuity - System Status
├── backlog.md             # Story + Backup - Overall Plan and Completion Records
├── progress-tracking.md   # Backup - Completion Records
├── sprints/               # Story - Sprint Plans
└── stories/               # Story - Individual Stories
```

## 🎭 AI Agent Persona Utilization

### PM (Product Manager)

- **Activation**: "PRD", "Product Requirements", "Feature Specs", "Roadmap"
- **Role**: Story-centered work (Overall direction)

### PO (Product Owner)

- **Activation**: "Sprint", "Backlog", "Story", "Acceptance Criteria"
- **Role**: Story + Continuity work (Plans and current status)

### Dev (Developer)

- **Activation**: "Code", "Implementation", "Development", "API", "Component"
- **Role**: Continuity + Backup work (Current work and completion records)

### QA (QA Engineer)

- **Activation**: "Test", "Verification", "Quality", "QA", "Review"
- **Role**: Backup-centered work (Completed work verification)

## 💡 Tips and Best Practices

### 1. Make Specific Requests

```
❌ "Tell me about project situation"
✅ "Check current Sprint 5 progress and next Sprint plan"
```

### 2. Maintain Context

```
❌ Requesting explanations from scratch every time
✅ "Continue from previous work"
```

### 3. Step-by-Step Approach

```
1st Step: "Understand overall situation" (Story)
2nd Step: "Understand current work context" (Continuity)
3rd Step: "Update completion records" (Backup)
```

## 🔧 Problem Solving

### When AI Loses Context

```
"Read docs/project-management/README.md file and understand current situation"
```

### When Work Connection Breaks

```
"Check progress-tracking.md and backlog.md to understand work continuity"
```

### When Priorities Are Unclear

```
"Check backlog.md for P0, P1 tasks and determine next work priorities"
```

## 📚 Related Documents

- [Project README](../README.md) - Overall system overview
- [Film Production Method Adoption](INSPIRATION_EN.md) - Background theory
- [Templates](../../templates/) - Reusable templates
- [Example Projects](../../examples/) - Actual usage examples

---

Use this guide to collaborate more efficiently with AI agents! 🚀
