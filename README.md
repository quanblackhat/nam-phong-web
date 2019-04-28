# nam-phong-web

## Cấu hình cơ bản
Ở file `application.properties` setting các thông số sau:

1. `spring.datasource.url=jdbc:mysql://localhost:3306/namphong_web_db?useUnicode=yes&characterEncoding=UTF-8`
URL của database
2. `spring.datasource.username=root` -> Username truy cập database
3. `spring.datasource.password=12qwaszx!` -> Password truy cập database

4. `directory.images1=/Users/bapvn/Images/` -> Địa chỉ thư mục ảnh 1 trong ổ đĩa

5. `directory.images2=/Users/bapvn/Anh/` -> Địa chỉ thư mục ảnh 2. Tương tự nếu có nhiều thự mục ảnh khác nhau thì thêm config chỗ này.
    
6. `page_init=1` -> Trang đầu tiên muốn hiển thị khi xử lý phân trang
7. `page_size=10`-> Tổng số phần tử trên 1 trang
8. `page_show=5` -> Số trang xuất hiện bên dưới menu chuyển trang
9. `server.servlet.context-path=/nam-phong-web` -> đường dẫn đến app, nếu set value là `server.servlet.context-path=` thì app sẽ được build ở root

## Hardcode trên màn hình index

1. File MainController.java, line 75, mục **tin tuyển sinh** load các bài viết theo category có id là 6. 
2. File MainController.java, line 79, mục **tin quốc** load các bài viết theo category có id là 8.


## Config thư mục ảnh

1. Điều kiện

    Field url image trong db phải lưu địa chỉ thư mục ảnh đó, đã được định nghĩa sẵn. Ví dụ
    
    /image/filename.jpg  -> Config này đã có trong hệ 
    /anhbaiviet/filename.jpg
    /anhtieude/filename.jpg
    /anhheader/filnename.jpg
    
    **Cần thêm 4 config mapping trỏ đến thư mục ảnh tương ứng trong hệ thống**

2. Trình tự
	2.1 Thêm thư mục chứa ảnh ở file application.properties
	directory.images2=/Users/bapvn/anhbaiviet/
	directory.images3=/Users/bapvn/anhtieude/
	directory.images4=/Users/bapvn/anhheader/

	2.2 Đăng kí đường dẫn tương ứng vào file `Config.java`
	
	Load đường dẫn tuyệt đối vào các biến
	
	`@Value("${directory.images2}")
    private String imagesDirectory2;`
        
	`@Value("${directory.images3}")
    private String imagesDirectory3;`
    
    `@Value("${directory.images4}")
    private String imagesDirectory4;`
	
	Add thêm config vào hàm `addResourceHandlers`
	
	
        if (!registry.hasMappingForPattern("/anhbaiviet/**")) {
            registry.addResourceHandler("/anhbaiviet/**")
                .addResourceLocations("file:" + imagesDirectory2)
                .setCachePeriod(3600)
                .resourceChain(true)
                .addResolver(new PathResourceResolver());
        }
