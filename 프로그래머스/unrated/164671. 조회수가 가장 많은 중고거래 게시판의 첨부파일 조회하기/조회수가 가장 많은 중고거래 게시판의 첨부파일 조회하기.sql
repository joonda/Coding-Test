SELECT CONCAT('/home/grep/src/', a.BOARD_ID, '/', a.FILE_ID, a.FILE_NAME, a.FILE_EXT) as FILE_PATH FROM USED_GOODS_FILE a
inner join used_goods_board b on a.board_id = b.board_id
where b.views = (select max(views) from used_goods_board)
order by a.file_id DESC;