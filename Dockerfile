# Gunakan base image Node.js
FROM node:14
# Set working directory
WORKDIR /usr/src/app
# Salin file package.json dan instal dependensi
COPY package*.json ./
RUN npm install
# Salin seluruh kode aplikasi ke dalam container
COPY . .
# Expose port aplikasi
EXPOSE 3000
# Jalankan aplikasi
CMD ["npm", "start"]