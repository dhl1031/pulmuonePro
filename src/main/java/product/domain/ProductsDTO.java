package product.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductsDTO {
	
	   private String products_no;         // 상품번호
	   private String category_no;      // 카테고리번호
	   private String products_name;      // 상품명
	   private String products_sub_name;      // 상품서브명
	   private String products_type;      // 상품타입
	   private String content;      // 내용
	   private int price;      // 가격
	   private int event_price;      // 이벤트가격
	   private String products_size;         // 용량
	   private String delivery_type;         // 배송방식
	   private int tag_no1;         // 태그1
	   private int tag_no2;         // 태그2
	   private int tag_no3;         // 태그3
	   private int tag_no4;         // 태그4
	   private int tag_no5;         // 태그5
	   private int products_tag;         // 상품태그
	   private Date reg_date;         // 등록날
	   
}