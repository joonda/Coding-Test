select b.title TITLE, b.board_id BOARD_ID, r.reply_id REPLY_ID, r.writer_id WRITER_ID, r.contents CONTENTS, 
date_format(r.created_date, '%Y-%m-%d') CREATED_DATE
from used_goods_reply r, used_goods_board b
where b.board_id = r.board_id and b.created_date between '2022-10-01' and '2022-10-31'
order by CREATED_DATE, TITLE