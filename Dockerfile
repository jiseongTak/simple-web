FROM nginx:alpine

# 기존 nginx 기본 페이지 제거
RUN rm -rf /usr/share/nginx/html/*

# 웹 파일들을 컨테이너로 복사
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
COPY scripts/ /usr/share/nginx/html/scripts/

# nginx 포트 노출
# 안적어도 열린다. 명시용
EXPOSE 80

# nginx 실행
CMD ["nginx", "-g", "daemon off;"]