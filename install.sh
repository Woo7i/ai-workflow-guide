#!/bin/bash

# AI Workflow Guide 설치 스크립트
# 사용법: ./install.sh [프로젝트-경로]

set -e

# 색상 정의
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 로고 출력
echo -e "${BLUE}"
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║                    AI Workflow Guide                        ║"
echo "║              프로젝트 관리 시스템 설치 도구                  ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo -e "${NC}"

# 설치 경로 확인
if [ $# -eq 0 ]; then
    echo -e "${YELLOW}사용법: ./install.sh [프로젝트-경로]${NC}"
    echo -e "${YELLOW}예시: ./install.sh /path/to/your-project${NC}"
    exit 1
fi

PROJECT_PATH="$1"
TEMPLATE_DIR="templates/project-management"

# 프로젝트 경로 존재 확인
if [ ! -d "$PROJECT_PATH" ]; then
    echo -e "${RED}❌ 오류: 프로젝트 경로가 존재하지 않습니다: $PROJECT_PATH${NC}"
    exit 1
fi

# docs 디렉토리 생성
DOCS_DIR="$PROJECT_PATH/docs"
PROJECT_MGMT_DIR="$DOCS_DIR/project-management"

echo -e "${BLUE}📁 프로젝트 구조 생성 중...${NC}"

# 디렉토리 생성
mkdir -p "$PROJECT_MGMT_DIR"
mkdir -p "$PROJECT_MGMT_DIR/sprints"
mkdir -p "$PROJECT_MGMT_DIR/stories"
mkdir -p "$PROJECT_MGMT_DIR/stories/completed"
mkdir -p "$PROJECT_MGMT_DIR/stories/current"
mkdir -p "$DOCS_DIR/guides"

echo -e "${GREEN}✅ 디렉토리 구조 생성 완료${NC}"

# 템플릿 파일들 복사
echo -e "${BLUE}📋 템플릿 파일 복사 중...${NC}"

# 프로젝트 관리 템플릿 복사
cp "$TEMPLATE_DIR/README-template.md" "$PROJECT_MGMT_DIR/README.md"
cp "$TEMPLATE_DIR/backlog-template.md" "$PROJECT_MGMT_DIR/backlog.md"
cp "$TEMPLATE_DIR/current-status-template.md" "$PROJECT_MGMT_DIR/current-status.md"
cp "$TEMPLATE_DIR/progress-tracking-template.md" "$PROJECT_MGMT_DIR/progress-tracking.md"
cp "$TEMPLATE_DIR/sprint-template.md" "$PROJECT_MGMT_DIR/sprints/"
cp "$TEMPLATE_DIR/story-template.md" "$PROJECT_MGMT_DIR/stories/"

# 가이드 문서 복사
cp "docs/guides/AI_AGENT_QUICK_GUIDE.md" "$DOCS_DIR/guides/"
cp "docs/guides/AI_AGENT_QUICK_GUIDE_EN.md" "$DOCS_DIR/guides/"
cp "docs/guides/QUALITY_ASSURANCE.md" "$DOCS_DIR/guides/"
cp "docs/guides/QUALITY_ASSURANCE_EN.md" "$DOCS_DIR/guides/"
cp "docs/guides/IMPORTANT_NOTES.md" "$DOCS_DIR/guides/"
cp "docs/guides/IMPORTANT_NOTES_EN.md" "$DOCS_DIR/guides/"
cp "docs/guides/INSPIRATION.md" "$DOCS_DIR/guides/"
cp "docs/guides/INSPIRATION_EN.md" "$DOCS_DIR/guides/"

echo -e "${GREEN}✅ 템플릿 파일 복사 완료${NC}"

# 프로젝트별 설정 파일 생성
echo -e "${BLUE}⚙️  프로젝트 설정 파일 생성 중...${NC}"

# .ai-workflow-config 파일 생성
cat > "$PROJECT_PATH/.ai-workflow-config" << EOF
# AI Workflow Guide 설정 파일
# 이 파일은 AI 에이전트가 프로젝트를 이해하는 데 도움이 됩니다

PROJECT_NAME="$(basename "$PROJECT_PATH")"
PROJECT_TYPE="software"
WORKFLOW_VERSION="1.0.0"
INSTALLED_DATE="$(date '+%Y-%m-%d')"

# 3단계 구조 경로
STORY_PATH="docs/project-management/backlog.md"
CONTINUITY_PATH="docs/project-management/current-status.md"
BACKUP_PATH="docs/project-management/progress-tracking.md"

# AI 에이전트 프롬프트 힌트
AI_PROMPTS="docs/guides/AI_AGENT_QUICK_GUIDE.md"
EOF

# README 업데이트 (기존 README가 있다면 백업)
if [ -f "$PROJECT_PATH/README.md" ]; then
    cp "$PROJECT_PATH/README.md" "$PROJECT_PATH/README.md.backup"
    echo -e "${YELLOW}⚠️  기존 README.md를 README.md.backup으로 백업했습니다${NC}"
fi

# AI Workflow Guide 사용법을 README에 추가
cat >> "$PROJECT_PATH/README.md" << EOF

---

## 🤖 AI Workflow Guide

이 프로젝트는 AI Workflow Guide를 사용하여 관리됩니다.

### 빠른 시작

1. **프로젝트 상황 파악**: "전체 프로젝트 상황 및 백로그 분석해줘"
2. **현재 작업 확인**: "현재 작업 컨텍스트 파악해줘"
3. **완료 기록 확인**: "완료된 작업 리뷰해줘"

### 자세한 사용법

- [AI 에이전트 빠른 가이드](docs/guides/AI_AGENT_QUICK_GUIDE.md)
- [품질 검증 가이드](docs/guides/QUALITY_ASSURANCE.md)
- [중요 주의사항](docs/guides/IMPORTANT_NOTES.md)

EOF

echo -e "${GREEN}✅ 프로젝트 설정 파일 생성 완료${NC}"

# 설치 완료 메시지
echo -e "${GREEN}"
echo "🎉 AI Workflow Guide 설치가 완료되었습니다!"
echo ""
echo "📁 생성된 구조:"
echo "   $PROJECT_PATH/"
echo "   ├── docs/"
echo "   │   ├── project-management/"
echo "   │   │   ├── README.md"
echo "   │   │   ├── backlog.md"
echo "   │   │   ├── current-status.md"
echo "   │   │   ├── progress-tracking.md"
echo "   │   │   ├── sprints/"
echo "   │   │   └── stories/"
echo "   │   └── guides/"
echo "   │       ├── AI_AGENT_QUICK_GUIDE.md"
echo "   │       ├── QUALITY_ASSURANCE.md"
echo "   │       └── ..."
echo "   └── .ai-workflow-config"
echo ""
echo "🚀 다음 단계:"
echo "   1. AI 에이전트에게 '전체 프로젝트 상황 파악해줘' 요청"
echo "   2. docs/project-management/backlog.md에서 프로젝트 백로그 작성"
echo "   3. docs/project-management/current-status.md에서 현재 상태 업데이트"
echo ""
echo "📚 자세한 사용법은 docs/guides/ 폴더의 가이드를 참조하세요."
echo -e "${NC}"
