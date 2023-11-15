package persistence.order;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import domain.order.drk.DrkHistoryDTO;
import domain.order.drk.DrkScheduleDTO;
import domain.order.gift.GiftOrderDTO;
import domain.order.gift.GiftPayDTO;
import domain.order.gift.GiftShipDTO;

public interface GiftOrderImpl {
	
	// 1. 주문, 결제 정보 추가
	int insertGiftOrder(Connection conn, GiftOrderDTO dto) throws SQLException;
	int insertGiftPay(Connection conn, GiftPayDTO dto) throws SQLException;
	
	// 2. 주문 취소
	int deleteOrder(Connection conn, int giftOrderNo) throws SQLException;
	
	// 3. 배송지 정보 추가
	int insertGiftShip(Connection conn, GiftShipDTO dto) throws SQLException;
	
	
	// 가맹점 확정 후
	// 4. 임시 회원 추가
	int insertMember(Connection conn, String name, String tel) throws SQLException;
	
	// 5. 음용스케줄, 음용내역 추가
	int insertDrkSchedule(Connection conn, DrkScheduleDTO dto) throws SQLException;
	int insertDrkHistory(Connection conn, DrkHistoryDTO dto) throws SQLException;
	
	
	// 조회
	// 6. 시음선물 내역 조회
	List<GiftOrderDTO> selectGiftOrderList(Connection conn, int memberNo, Date startSearchDate, Date endSearchDate, int pageNo) throws SQLException;
	
	// 7. 시음선물 내역 상세 조회
	GiftOrderDTO selectGiftOrderOne(Connection conn, int giftOrderNo) throws SQLException;
	
}