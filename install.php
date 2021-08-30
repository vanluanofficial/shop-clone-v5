<?php
    require_once(__DIR__."/config/config.php");
    require_once(__DIR__."/config/function.php");

    
    // INSERT LANG
    insert_lang(151, 'HOA HỒNG BẠN NHẬN ĐƯỢC', 'PROFITS YOU GET');
    insert_lang(150, 'THỜI GIAN THAM GIA', 'CREATEDATE');
    insert_lang(149, 'TÊN ĐĂNG NHẬP', 'USERNAME');
    insert_lang(148, 'BẠN BÈ ĐƯỢC BẠN GIỚI THIỆU', 'FRIENDS RECOMMENDED BY YOU');
    insert_lang(147, 'Việc xác định xem ai là người giới thiệu của một người dùng phụ thuộc hoàn toàn vào link giới
    thiệu. Nếu một người dùng nhấp vào nhiều link ref khác nhau thì chỉ có link ref cuối cùng họ
    nhấp vào trước khi tạo tài khoản là có hiệu lực.', 'Determining who a users referrer is depends entirely on the referral link
    introduce. If a user clicks on many different ref links, only the last ref link they have
    click before creating an account to take effect.');
    insert_lang(146, 'Hoa hồng chỉ được tính khi người dùng mua tài nguyên trên web.', 'Commissions are calculated only when the user purchases resources on the web.');
    insert_lang(145, 'Những tài khoản được hệ thống xác định là tài khoản sao chép của các tài khoản khác sẽ không
    được dùng để tính hoa hồng.', 'Accounts that are identified by the system as duplicate accounts of other accounts will not
    used to calculate the commission.');
    insert_lang(144, 'ĐIỀU KIỆN', 'CONDITION');
    insert_lang(143, 'Sao chép địa chỉ này và chia sẻ đến bạn bè của bạn.', 'Copy this address and share with your friends.');
    insert_lang(142, 'Giới thiệu khách hàng sử dụng dịch vụ của chúng tôi nhận ngay hoa hồng', 'Refer customers to use our services and receive commissions');
    insert_lang(141, 'Cộng Tác Viên', 'Referral');
    insert_lang(140, 'ĐÃ BÁN', 'SOLD');
    insert_lang(139, 'Nhập số điện thoại liên hệ', 'Enter contact phone number');
    insert_lang(138, 'Cập nhật số điện thoại', 'Update phone number');
    insert_lang(137, 'Xác minh ngay', 'Verify Now');
    insert_lang(136, 'Vui lòng nhập địa chỉ Email', 'Please enter your email address');
    insert_lang(135, 'Nhập địa chỉ Email', 'Enter your email address');
    insert_lang(134, 'Nhập lại mật khẩu không chính xác', 'Re-enter incorrect password');
    insert_lang(133, 'Vui lòng nhập lại mật khẩu', 'Please re-enter your password');
    insert_lang(132, 'Nhập lại mật khẩu', 'Enter the password');
    insert_lang(131, 'Đăng ký tài khoản', 'Register an account');
    insert_lang(128, 'Điều khoản', 'Rules');
    insert_lang(129, 'Dịch Vụ', 'Services');
    insert_lang(130, 'Liên Hệ', 'Contact');
    // INSERT OPTIONS
    insert_options('type_buy', 'LIST');
    insert_options('contact', '');
    insert_options('TypePassword', '');
    insert_options('time_delete', '2592000');
    insert_options('script', '');
    insert_options('check_time_cron', 0);
    insert_options('check_time_cron_bank', 0);
    insert_options('mk_bank', '');
    insert_options('stk_bank', '');
    insert_options('type_bank', 'Vietcombank');
    insert_options('recharge_min', 0);
    insert_options('display_list_login', 'ON');
    insert_options('display_sold', 'ON');
    insert_options('status_cron_momo', 'ON');
    insert_options('status_cron_bank', 'ON');
    insert_options('status_ref', 'ON');
    insert_options('ck_ref', 10);
    insert_options('status_top_nap', 'ON');

    // INSERT DATABASE CHO BẢN CẬP NHẬT
    $CMSNT->query("ALTER TABLE `category` ADD `stt` int(11) NULL DEFAULT '0' AFTER `id` ");
    $CMSNT->query("ALTER TABLE `dichvu` ADD `check_live` VARCHAR(255) NULL DEFAULT 'OFF' AFTER `stt` ");
    $CMSNT->query("ALTER TABLE `users` ADD `device` VARCHAR(255) NULL DEFAULT NULL AFTER `ip` ");
    $CMSNT->query("ALTER TABLE `users` ADD `UserAgent` VARCHAR(255) NULL DEFAULT NULL AFTER `ip` ");
    $CMSNT->query("ALTER TABLE `dichvu` ADD `luuy` LONGBLOB NULL DEFAULT NULL AFTER `mua_toi_thieu`");
    $CMSNT->query("ALTER TABLE `dichvu` ADD `stt` int(11) COLLATE utf8_vietnamese_ci NOT NULL AFTER `luuy`");
    $CMSNT->query("ALTER TABLE `bank_auto` CHANGE `tid` `tid` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL DEFAULT NULL");
    $CMSNT->query("ALTER TABLE `taikhoan` CHANGE `thoigianmua` `thoigianmua` DATETIME NULL DEFAULT NULL   ");
    $CMSNT->query("ALTER TABLE `users` ADD `ref_money` INT(11) NULL DEFAULT '0' AFTER `ref`");

    foreach($CMSNT->get_list("SELECT * FROM `dichvu`  ") as $dichvu)
    {
        if($dichvu['loai'] == 'VIA')
        {
            $CMSNT->update("dichvu", [
                'check_live'    => 'VIA'
            ], " `id` = '".$dichvu['id']."' ");
        }
        if($dichvu['loai'] == 'CLONE')
        {
            $CMSNT->update("dichvu", [
                'check_live'    => 'CLONE'
            ], " `id` = '".$dichvu['id']."' ");
        }
        if($dichvu['loai'] == 'GMAIL')
        {
            $CMSNT->update("dichvu", [
                'check_live'    => 'GMAIL'
            ], " `id` = '".$dichvu['id']."' ");
        }
    }
    

    die('Success!');