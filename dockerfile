# 1. 공식 Python 이미지 사용 (예: 3.11)  
FROM python:3.11-slim  
  
# 2. 작업 디렉토리 생성 및 이동  
WORKDIR /app  
  
# 3. requirements.txt 복사 및 의존성 설치  
COPY requirements.txt ./  
RUN pip install --no-cache-dir -r requirements.txt  
  
# 4. 소스 코드 복사  
COPY . .  
  
# 5. 환경 변수 설정 (옵션)  
ENV FLASK_APP=app.py  
  
# 6. 컨테이너 실행 시 Flask 앱 실행  
CMD ["flask", "run", "--host=0.0.0.0"]