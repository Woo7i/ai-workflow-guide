@echo off
setlocal enabledelayedexpansion

REM AI Workflow Guide 설치 스크립트 (Windows)
REM 사용법: install.bat [프로젝트-경로]

echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║                    AI Workflow Guide                        ║
echo ║              프로젝트 관리 시스템 설치 도구                  ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.

REM 인수 확인
if "%~1"=="" (
    echo 사용법: install.bat [프로젝트-경로]
    echo 예시: install.bat C:\path\to\your-project
    exit /b 1
)

set "PROJECT_PATH=%~1"
set "TEMPLATE_DIR=templates\project-management"

REM 프로젝트 경로 존재 확인
if not exist "%PROJECT_PATH%" (
    echo ❌ 오류: 프로젝트 경로가 존재하지 않습니다: %PROJECT_PATH%
    exit /b 1
)

echo 📁 프로젝트 구조 생성 중...

REM 디렉토리 생성
mkdir "%PROJECT_PATH%\docs" 2>nul
mkdir "%PROJECT_PATH%\docs\project-management" 2>nul
mkdir "%PROJECT_PATH%\docs\project-management\sprints" 2>nul
mkdir "%PROJECT_PATH%\docs\project-management\stories" 2>nul
mkdir "%PROJECT_PATH%\docs\project-management\stories\completed" 2>nul
mkdir "%PROJECT_PATH%\docs\project-management\stories\current" 2>nul
mkdir "%PROJECT_PATH%\docs\guides" 2>nul

echo ✅ 디렉토리 구조 생성 완료

echo 📋 템플릿 파일 복사 중...

REM 프로젝트 관리 템플릿 복사
copy "%TEMPLATE_DIR%\README-template.md" "%PROJECT_PATH%\docs\project-management\README.md" >nul
copy "%TEMPLATE_DIR%\backlog-template.md" "%PROJECT_PATH%\docs\project-management\backlog.md" >nul
copy "%TEMPLATE_DIR%\current-status-template.md" "%PROJECT_PATH%\docs\project-management\current-status.md" >nul
copy "%TEMPLATE_DIR%\progress-tracking-template.md" "%PROJECT_PATH%\docs\project-management\progress-tracking.md" >nul
copy "%TEMPLATE_DIR%\sprint-template.md" "%PROJECT_PATH%\docs\project-management\sprints\" >nul
copy "%TEMPLATE_DIR%\story-template.md" "%PROJECT_PATH%\docs\project-management\stories\" >nul

REM 가이드 문서 복사
copy "docs\guides\AI_AGENT_QUICK_GUIDE.md" "%PROJECT_PATH%\docs\guides\" >nul
copy "docs\guides\AI_AGENT_QUICK_GUIDE_EN.md" "%PROJECT_PATH%\docs\guides\" >nul
copy "docs\guides\QUALITY_ASSURANCE.md" "%PROJECT_PATH%\docs\guides\" >nul
copy "docs\guides\QUALITY_ASSURANCE_EN.md" "%PROJECT_PATH%\docs\guides\" >nul
copy "docs\guides\IMPORTANT_NOTES.md" "%PROJECT_PATH%\docs\guides\" >nul
copy "docs\guides\IMPORTANT_NOTES_EN.md" "%PROJECT_PATH%\docs\guides\" >nul
copy "docs\guides\INSPIRATION.md" "%PROJECT_PATH%\docs\guides\" >nul
copy "docs\guides\INSPIRATION_EN.md" "%PROJECT_PATH%\docs\guides\" >nul

echo ✅ 템플릿 파일 복사 완료

echo ⚙️  프로젝트 설정 파일 생성 중...

REM .ai-workflow-config 파일 생성
echo # AI Workflow Guide 설정 파일 > "%PROJECT_PATH%\.ai-workflow-config"
echo # 이 파일은 AI 에이전트가 프로젝트를 이해하는 데 도움이 됩니다 >> "%PROJECT_PATH%\.ai-workflow-config"
echo. >> "%PROJECT_PATH%\.ai-workflow-config"
echo PROJECT_NAME="%PROJECT_PATH%" >> "%PROJECT_PATH%\.ai-workflow-config"
echo PROJECT_TYPE="software" >> "%PROJECT_PATH%\.ai-workflow-config"
echo WORKFLOW_VERSION="1.0.0" >> "%PROJECT_PATH%\.ai-workflow-config"
echo INSTALLED_DATE="%DATE%" >> "%PROJECT_PATH%\.ai-workflow-config"
echo. >> "%PROJECT_PATH%\.ai-workflow-config"
echo # 3단계 구조 경로 >> "%PROJECT_PATH%\.ai-workflow-config"
echo STORY_PATH="docs\project-management\backlog.md" >> "%PROJECT_PATH%\.ai-workflow-config"
echo CONTINUITY_PATH="docs\project-management\current-status.md" >> "%PROJECT_PATH%\.ai-workflow-config"
echo BACKUP_PATH="docs\project-management\progress-tracking.md" >> "%PROJECT_PATH%\.ai-workflow-config"
echo. >> "%PROJECT_PATH%\.ai-workflow-config"
echo # AI 에이전트 프롬프트 힌트 >> "%PROJECT_PATH%\.ai-workflow-config"
echo AI_PROMPTS="docs\guides\AI_AGENT_QUICK_GUIDE.md" >> "%PROJECT_PATH%\.ai-workflow-config"

REM README 백업 및 업데이트
if exist "%PROJECT_PATH%\README.md" (
    copy "%PROJECT_PATH%\README.md" "%PROJECT_PATH%\README.md.backup" >nul
    echo ⚠️  기존 README.md를 README.md.backup으로 백업했습니다
)

REM AI Workflow Guide 사용법을 README에 추가
echo. >> "%PROJECT_PATH%\README.md"
echo --- >> "%PROJECT_PATH%\README.md"
echo. >> "%PROJECT_PATH%\README.md"
echo ## 🤖 AI Workflow Guide >> "%PROJECT_PATH%\README.md"
echo. >> "%PROJECT_PATH%\README.md"
echo 이 프로젝트는 AI Workflow Guide를 사용하여 관리됩니다. >> "%PROJECT_PATH%\README.md"
echo. >> "%PROJECT_PATH%\README.md"
echo ### 빠른 시작 >> "%PROJECT_PATH%\README.md"
echo. >> "%PROJECT_PATH%\README.md"
echo 1. **프로젝트 상황 파악**: "전체 프로젝트 상황 및 백로그 분석해줘" >> "%PROJECT_PATH%\README.md"
echo 2. **현재 작업 확인**: "현재 작업 컨텍스트 파악해줘" >> "%PROJECT_PATH%\README.md"
echo 3. **완료 기록 확인**: "완료된 작업 리뷰해줘" >> "%PROJECT_PATH%\README.md"
echo. >> "%PROJECT_PATH%\README.md"
echo ### 자세한 사용법 >> "%PROJECT_PATH%\README.md"
echo. >> "%PROJECT_PATH%\README.md"
echo - [AI 에이전트 빠른 가이드](docs\guides\AI_AGENT_QUICK_GUIDE.md) >> "%PROJECT_PATH%\README.md"
echo - [품질 검증 가이드](docs\guides\QUALITY_ASSURANCE.md) >> "%PROJECT_PATH%\README.md"
echo - [중요 주의사항](docs\guides\IMPORTANT_NOTES.md) >> "%PROJECT_PATH%\README.md"

echo ✅ 프로젝트 설정 파일 생성 완료

REM 설치 완료 메시지
echo.
echo 🎉 AI Workflow Guide 설치가 완료되었습니다!
echo.
echo 📁 생성된 구조:
echo    %PROJECT_PATH%\
echo    ├── docs\
echo    │   ├── project-management\
echo    │   │   ├── README.md
echo    │   │   ├── backlog.md
echo    │   │   ├── current-status.md
echo    │   │   ├── progress-tracking.md
echo    │   │   ├── sprints\
echo    │   │   └── stories\
echo    │   └── guides\
echo    │       ├── AI_AGENT_QUICK_GUIDE.md
echo    │       ├── QUALITY_ASSURANCE.md
echo    │       └── ...
echo    └── .ai-workflow-config
echo.
echo 🚀 다음 단계:
echo    1. AI 에이전트에게 '전체 프로젝트 상황 파악해줘' 요청
echo    2. docs\project-management\backlog.md에서 프로젝트 백로그 작성
echo    3. docs\project-management\current-status.md에서 현재 상태 업데이트
echo.
echo 📚 자세한 사용법은 docs\guides\ 폴더의 가이드를 참조하세요.
echo.

pause
