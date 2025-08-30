# Dùng Ubuntu làm base image
FROM ubuntu:22.04

# Cài đặt các gói cần thiết
RUN apt-get update && \
    apt-get install -y \
    curl wget git vim build-essential sudo ttyd \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Đặt thư mục mặc định
WORKDIR /root

# Khi container khởi động, chạy ttyd lắng nghe ở port 8080
CMD ["ttyd", "-p", "8080", "bash"]