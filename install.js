#!/usr/bin/env node

/**
 * AI Workflow Guide 설치 스크립트 (Node.js)
 * 사용법: node install.js [프로젝트-경로]
 */

const fs = require("fs");
const path = require("path");
const { execSync } = require("child_process");

// 색상 정의
const colors = {
  red: "\x1b[31m",
  green: "\x1b[32m",
  yellow: "\x1b[33m",
  blue: "\x1b[34m",
  reset: "\x1b[0m",
};

// 로고 출력
function printLogo() {
  console.log(colors.blue);
  console.log(
    "╔══════════════════════════════════════════════════════════════╗"
  );
  console.log(
    "║                    AI Workflow Guide                        ║"
  );
  console.log(
    "║              프로젝트 관리 시스템 설치 도구                  ║"
  );
  console.log(
    "╚══════════════════════════════════════════════════════════════╝"
  );
  console.log(colors.reset);
}

// 디렉토리 생성
function createDirectories(projectPath) {
  const dirs = [
    "docs",
    "docs/project-management",
    "docs/project-management/sprints",
    "docs/project-management/stories",
    "docs/project-management/stories/completed",
    "docs/project-management/stories/current",
    "docs/guides",
  ];

  console.log(colors.blue + "📁 프로젝트 구조 생성 중..." + colors.reset);

  dirs.forEach((dir) => {
    const fullPath = path.join(projectPath, dir);
    if (!fs.existsSync(fullPath)) {
      fs.mkdirSync(fullPath, { recursive: true });
    }
  });

  console.log(colors.green + "✅ 디렉토리 구조 생성 완료" + colors.reset);
}

// 파일 복사
function copyFile(src, dest) {
  if (fs.existsSync(src)) {
    fs.copyFileSync(src, dest);
    return true;
  }
  return false;
}

// 템플릿 파일들 복사
function copyTemplates(projectPath) {
  console.log(colors.blue + "📋 템플릿 파일 복사 중..." + colors.reset);

  const templateDir = "templates/project-management";
  const guidesDir = "docs/guides";

  // 프로젝트 관리 템플릿 복사
  const templates = [
    {
      src: `${templateDir}/README-template.md`,
      dest: `${projectPath}/docs/project-management/README.md`,
    },
    {
      src: `${templateDir}/backlog-template.md`,
      dest: `${projectPath}/docs/project-management/backlog.md`,
    },
    {
      src: `${templateDir}/current-status-template.md`,
      dest: `${projectPath}/docs/project-management/current-status.md`,
    },
    {
      src: `${templateDir}/progress-tracking-template.md`,
      dest: `${projectPath}/docs/project-management/progress-tracking.md`,
    },
    {
      src: `${templateDir}/sprint-template.md`,
      dest: `${projectPath}/docs/project-management/sprints/sprint-template.md`,
    },
    {
      src: `${templateDir}/story-template.md`,
      dest: `${projectPath}/docs/project-management/stories/story-template.md`,
    },
  ];

  // 가이드 문서 복사
  const guides = [
    {
      src: `${guidesDir}/AI_AGENT_QUICK_GUIDE.md`,
      dest: `${projectPath}/docs/guides/AI_AGENT_QUICK_GUIDE.md`,
    },
    {
      src: `${guidesDir}/AI_AGENT_QUICK_GUIDE_EN.md`,
      dest: `${projectPath}/docs/guides/AI_AGENT_QUICK_GUIDE_EN.md`,
    },
    {
      src: `${guidesDir}/QUALITY_ASSURANCE.md`,
      dest: `${projectPath}/docs/guides/QUALITY_ASSURANCE.md`,
    },
    {
      src: `${guidesDir}/QUALITY_ASSURANCE_EN.md`,
      dest: `${projectPath}/docs/guides/QUALITY_ASSURANCE_EN.md`,
    },
    {
      src: `${guidesDir}/IMPORTANT_NOTES.md`,
      dest: `${projectPath}/docs/guides/IMPORTANT_NOTES.md`,
    },
    {
      src: `${guidesDir}/IMPORTANT_NOTES_EN.md`,
      dest: `${projectPath}/docs/guides/IMPORTANT_NOTES_EN.md`,
    },
    {
      src: `${guidesDir}/INSPIRATION.md`,
      dest: `${projectPath}/docs/guides/INSPIRATION.md`,
    },
    {
      src: `${guidesDir}/INSPIRATION_EN.md`,
      dest: `${projectPath}/docs/guides/INSPIRATION_EN.md`,
    },
  ];

  [...templates, ...guides].forEach(({ src, dest }) => {
    if (copyFile(src, dest)) {
      console.log(`  ✓ ${path.basename(dest)}`);
    } else {
      console.log(
        colors.yellow + `  ⚠️  파일을 찾을 수 없습니다: ${src}` + colors.reset
      );
    }
  });

  console.log(colors.green + "✅ 템플릿 파일 복사 완료" + colors.reset);
}

// 설정 파일 생성
function createConfigFile(projectPath) {
  console.log(colors.blue + "⚙️  프로젝트 설정 파일 생성 중..." + colors.reset);

  const configContent = `# AI Workflow Guide 설정 파일
# 이 파일은 AI 에이전트가 프로젝트를 이해하는 데 도움이 됩니다

PROJECT_NAME="${path.basename(projectPath)}"
PROJECT_TYPE="software"
WORKFLOW_VERSION="1.0.0"
INSTALLED_DATE="${new Date().toISOString().split("T")[0]}"

# 3단계 구조 경로
STORY_PATH="docs/project-management/backlog.md"
CONTINUITY_PATH="docs/project-management/current-status.md"
BACKUP_PATH="docs/project-management/progress-tracking.md"

# AI 에이전트 프롬프트 힌트
AI_PROMPTS="docs/guides/AI_AGENT_QUICK_GUIDE.md"
`;

  fs.writeFileSync(
    path.join(projectPath, ".ai-workflow-config"),
    configContent
  );

  console.log(colors.green + "✅ 프로젝트 설정 파일 생성 완료" + colors.reset);
}

// README 업데이트
function updateReadme(projectPath) {
  const readmePath = path.join(projectPath, "README.md");
  const backupPath = path.join(projectPath, "README.md.backup");

  // 기존 README 백업
  if (fs.existsSync(readmePath)) {
    fs.copyFileSync(readmePath, backupPath);
    console.log(
      colors.yellow +
        "⚠️  기존 README.md를 README.md.backup으로 백업했습니다" +
        colors.reset
    );
  }

  const aiWorkflowSection = `

---

## 🤖 AI Workflow Guide

이 프로젝트는 AI Workflow Guide를 사용하여 관리됩니다.

### 빠른 시작

1. **프로젝트 상황 파악**: "현재 진행상황 및 백로그 분석해줘"
2. **현재 작업 확인**: "현재 작업 컨텍스트 파악해줘"
3. **완료 기록 확인**: "완료된 작업 리뷰해줘"

### 자세한 사용법

- [AI 에이전트 빠른 가이드](docs/guides/AI_AGENT_QUICK_GUIDE.md)
- [품질 검증 가이드](docs/guides/QUALITY_ASSURANCE.md)
- [중요 주의사항](docs/guides/IMPORTANT_NOTES.md)
`;

  if (fs.existsSync(readmePath)) {
    fs.appendFileSync(readmePath, aiWorkflowSection);
  } else {
    fs.writeFileSync(
      readmePath,
      `# ${path.basename(projectPath)}${aiWorkflowSection}`
    );
  }
}

// 설치 완료 메시지
function printSuccessMessage(projectPath) {
  console.log(colors.green);
  console.log("🎉 AI Workflow Guide 설치가 완료되었습니다!");
  console.log("");
  console.log("📁 생성된 구조:");
  console.log(`   ${projectPath}/`);
  console.log("   ├── docs/");
  console.log("   │   ├── project-management/");
  console.log("   │   │   ├── README.md");
  console.log("   │   │   ├── backlog.md");
  console.log("   │   │   ├── current-status.md");
  console.log("   │   │   ├── progress-tracking.md");
  console.log("   │   │   ├── sprints/");
  console.log("   │   │   └── stories/");
  console.log("   │   └── guides/");
  console.log("   │       ├── AI_AGENT_QUICK_GUIDE.md");
  console.log("   │       ├── QUALITY_ASSURANCE.md");
  console.log("   │       └── ...");
  console.log("   └── .ai-workflow-config");
  console.log("");
  console.log("🚀 다음 단계:");
  console.log("   1. AI 에이전트에게 '현재 진행상황 및 백로그 분석해줘' 요청");
  console.log(
    "   2. docs/project-management/backlog.md에서 프로젝트 백로그 작성"
  );
  console.log(
    "   3. docs/project-management/current-status.md에서 현재 상태 업데이트"
  );
  console.log("");
  console.log("📚 자세한 사용법은 docs/guides/ 폴더의 가이드를 참조하세요.");
  console.log(colors.reset);
}

// 메인 함수
function main() {
  printLogo();

  const projectPath = process.argv[2];

  if (!projectPath) {
    console.log(
      colors.yellow + "사용법: node install.js [프로젝트-경로]" + colors.reset
    );
    console.log(
      colors.yellow +
        "예시: node install.js /path/to/your-project" +
        colors.reset
    );
    process.exit(1);
  }

  // 프로젝트 경로 존재 확인
  if (!fs.existsSync(projectPath)) {
    console.log(
      colors.red +
        `❌ 오류: 프로젝트 경로가 존재하지 않습니다: ${projectPath}` +
        colors.reset
    );
    process.exit(1);
  }

  try {
    createDirectories(projectPath);
    copyTemplates(projectPath);
    createConfigFile(projectPath);
    updateReadme(projectPath);
    printSuccessMessage(projectPath);
  } catch (error) {
    console.log(
      colors.red +
        `❌ 설치 중 오류가 발생했습니다: ${error.message}` +
        colors.reset
    );
    process.exit(1);
  }
}

// 스크립트 실행
if (require.main === module) {
  main();
}

module.exports = { main };
