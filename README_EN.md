# AI Workflow Guide

A context continuity-based project management system for developers collaborating with AI agents

## Core Concept: 3-Stage Structure

### Story - What to Build
Overall project direction and goals. Maintains the flow even when tasks change.

### Continuity - How to Build
Current position and next tasks. Understand task sequence and connections at a glance.

### Backup - What Has Been Completed
Completed work records. Ensures connectivity to next tasks.

## Key Features

- **Single Entry Point**: Access all information in one place
- **AI Optimized**: AI agents quickly understand context
- **Context Continuity**: Never lose track of work flow
- **Systematic Backlog**: Clear separation of completed/in-progress/planned

## Source of Inspiration

This system draws inspiration from film production:

- **Storyline** (Script) → **Story**: Overall film flow and direction
- **Storyboard** (Shooting Plan) → **Continuity**: Current shooting position and next shot
- **On-Set Editing** (Shooting Log) → **Backup**: Completed shooting records and connectivity

For detailed information, see [INSPIRATION.md](docs/guides/INSPIRATION_EN.md).

## Quick Start

### 1. Project Setup

```bash
# Create project folder
mkdir your-project
cd your-project

# Copy AI Workflow Guide structure
cp -r /path/to/ai-workflow-guide/templates/project-management/* docs/project-management/
```

### 2. Using AI Agents

Request from AI agents as follows:

- **Story Understanding**: "Check overall project direction"
- **Continuity Understanding**: "Understand current work context"
- **Backup Check**: "Review completed work"

For detailed prompt guides, see [AI_AGENT_QUICK_GUIDE_EN.md](docs/guides/AI_AGENT_QUICK_GUIDE_EN.md).

## Project Structure

```
your-project/
├── docs/
│   └── project-management/
│       ├── README.md              # Continuity - Current Status
│       ├── current-status.md      # Continuity - System Status
│       ├── backlog.md             # Story + Backup - Overall Plan and Completion Records
│       ├── progress-tracking.md   # Backup - Completion Records
│       ├── sprints/               # Story - Sprint Plans
│       └── stories/               # Story - Individual Stories
└── docs/guides/
    ├── AI_AGENT_QUICK_GUIDE.md    # Continuity - Quick Reference
    └── INSPIRATION.md             # Film Production Method Adoption
```

## Document Structure

### Story
- `backlog.md`: Overall project backlog
- `sprints/`: Sprint plan documents
- `stories/`: Individual Story documents

### Continuity
- `README.md`: Project overview and current status
- `current-status.md`: System current status
- `AI_AGENT_QUICK_GUIDE.md`: AI agent quick reference guide

### Backup
- `progress-tracking.md`: Completed work tracking
- `backlog.md`: Completion status indication

## Examples

For actual project examples, see the [examples/](examples/) folder.

## Contributing

For contribution methods, see [CONTRIBUTING.md](CONTRIBUTING.md).

## License

MIT License - For details, see [LICENSE](LICENSE) file.

## Learn More

- [AI Agent Quick Guide](docs/guides/AI_AGENT_QUICK_GUIDE.md)
- [Film Production Method Adoption](docs/guides/INSPIRATION.md)
- [Templates](templates/)
- [Example Projects](examples/)
