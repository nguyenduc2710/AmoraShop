# SWP391  -  AmoraShop - Shop Ban Nuoc Hoa. Sử dụng Java, JDK 1.8, Tomcat 10.

Nguyên tắc viết code: 
  1. Tên packages viết thường, tên class chữ cái đầu viết hoa theo luật Camel
  2. Đặt tên class, function có ý nghĩa, sắp xếp folder hợp lý để dể quản lý
  3. ALT + SHIFT + F  phím tắt sắp xếp gọn code


Nguyên tắc up git:
  1. Mỗi người sẽ có 1 branch riêng, đề xuất mọi người trong branch của mình tạo thêm 1 branch để chứa main repository khi pull từ github về.
  
  2. Khi bắt đầu 1 function, VD: UpdatePerfumeCost(), TA PHẢI TẠO MỚI 1 BRANCH.
    2.1. Trong quá trình code, lưu file, cần commit code 1 trong 2 ý WHAT (Đã làm cái gì) or WHY (Tại sao lại chỉnh sửa file này).
    2.2. Sau khi push code lên github, function ổn, được đưa vào main branch. Function branch đã làm SẼ KHÔNG CÓ BẤT KÌ CODE CỦA FUNCTION NÀO KHÁC.
      ===> Tạo mới 1 branch khác. Function branch đã hoàn thành chỉ dùng để chỉnh sửa khi có bất kì lỗi nào liên quan đến function đó.
      
  3. Trong quá trình merge sub-branch với main-branch thì rất có khả năng xảy ra xung đột vì có sự chỉnh sửa khác với bản gốc main-branch.
    3.1. Vậy phòng cháy hơn chữa cháy, hãy cố gắng đặt tên biến sát nghĩa nhất. Không nên chỉnh sửa code nào khác liên quan đến function của mình.
    3.2. Nếu lỗi merge xảy ra, cần ngồi lại họp gấp @@.
    
-----
Feel free to chửi ngược lại e!
Vì chắc chắn sẽ có vấn đề trong quá trình làm app.
**NÓI ĐỂ HIỂU NHAU HƠN**
