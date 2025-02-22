FROM nginx:alpine

# ตั้งค่า WORKDIR สำหรับไฟล์ที่จะคัดลอก
WORKDIR /usr/share/nginx/html

# คัดลอกไฟล์ทั้งหมดจากโปรเจคไปที่ container
COPY . .

# เปิดพอร์ต 44513 ที่ใช้สำหรับการเข้าถึงเว็บ
EXPOSE 44513

# เริ่มต้น nginx เมื่อ container เริ่มทำงาน
CMD ["nginx", "-g", "daemon off;"]
