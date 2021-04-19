FROM nginx
# Ugly ❌
# RUN echo "1" >> /usr/share/nginx/html/index.html
# RUN echo "2" >> /usr/share/nginx/html/index.html
# RUN echo "3" >> /usr/share/nginx/html/index.html

#Better ✅
ENV pagefile /usr/share/nginx/html/mypage.html
RUN echo  "1" >> $pagefile && \
    echo  "2" >> $pagefile && \
    echo  "3" >> $pagefile
