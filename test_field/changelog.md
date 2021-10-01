RELEASE NOTE
============
v4.29.37 27/09/2021
-----------------
1. fix member name in shop testuser account
2. storePickUpExpressCheckout check string step
3. side menu of 'Message Center'
4. shopMessageFlitersStarArchive step
5. fix selector on MessageCenterPage

v4.29.36 23/09/2021
-----------------
1. payment/delivery option roll back step
2. store pick up element and step
3. add store pick up xls file
4. check promotions applied step
5. end full time
6. message center page element selector

v4.29.35 14/09/2021
-----------------
1. fix custom notification element
2. modify step due to delivery modularize address internal testing
3. rm sms image logo and update pick up store address
4. selectDropDownString order typo
5. return order show selector and add should see publish btn
6. rm should not see delete popup
7. add @premiumFeature for rollbackRemoveDirtyData.feature

v4.29.34 06/09/2021
-----------------
1. modify order of product setting items and category filter step
2. add hk address 3rd dropdown
3. update start-server-node.sh

v4.29.33 23/08/2021
-----------------
1. add @Job
2. modify row of variation member tier price field
3. modify mc and signup selector

v4.29.32 17/08/2021
-----------------
1. modify send reason button
2. update empty msg
3. add loading time and modify row of variation member tier price field
4. update google search field selector and rm invoice field assertion
5. rm domain edit due to onboarding_handle rollout
6. remark checkLayoutEngineMerchant-rococofashion

v4.29.31 06/08/2021
-----------------
1. remove variant row to row of variant list
2. checkIncreaseVariationLimit step

v4.29.30 30/07/2021
-----------------
1. fastcheckout add click save address checkbox step
2. MyPlanAndBillingPage subscription information element

v4.29.29 22/07/2021
-----------------
1. change instance to 80

v4.29.28 22/07/2021
-----------------
1. modify 7-11 pick-up store

v4.29.27 20/07/2021
-----------------
1. EAT-1457 modify impacted features
2. change fb login testuser
3. rename the promotion description string
4. remark subscription scenario

v4.29.26 12/07/2021
-----------------
1. modify the order of permission checkbox

v4.29.25 24/06/2021
-----------------
1. modify error msg alert in Plan Checkout Page
2. fix for custom notification without email picture
3. add sms zh-cn signup notification in Every8d
4. modify elements in Edit Staff Permissions Page for adding custom notification permission

v4.29.24 22/06/2021
-----------------
1. modify modify search field in Orders Page
2. modify download button in Google Mail Page
3. add @smokeTest for checkout with login
4. modify steps to check and click

v4.29.23 17/06/2021
-----------------
1. modify elements for invoice in Orders Show Page
2. modify the string of receipt details alert in Orders Show Page
3. remark scenrios for message redirect issue
4. change company invoice tax id
5. modify element agree term checkbox in Plan Checkout Page 

v4.29.22 01/06/2021
-----------------
1. bundlePromotionMenuNavigationSetting add click on last month button step

v4.29.22 10/06/2021
-----------------
1. fix PR-2606
2. selector change in Custom Sign Up Notification Page

v4.29.21 01/06/2021
-----------------
1. fix permission edit page selector
2. modify einvoice donate recipient check step
3. fast checkout selector changed
4. rm check step of cart panel bundle tag

v4.29.20 27/05/2021
-----------------
1. modify order of permission checkbox
2. add waiting time

v4.29.19 26/05/2021
-----------------
1. fix MC case for MC3.0 internal testing

v4.29.18 24/05/2021
-----------------
1. rename the delivery option of Zeek2door (Same Day Home Delivery)
2. modify element selectors of plan checkout page
3. add Custom Delivery for setupData-HK

v4.29.17 20/05/2021
-----------------
1. add wait and should see step
2. change step for deleting delivery option from click on to click for the same order of 

v4.29.16 19/05/2021
-----------------
1. add subscription product roll back

v4.29.15 18/05/2021
-----------------
1. modify maxInstances of shard chrome
2. remark subscription test case
3. rm wording of subscription
4. selector change in Plan Checkout Page
5. add need to roll back step

v4.29.14 13/05/2021
-----------------
1. tcat invoice change s3 link and add tcat delivery before index
2. fastcheckout general error msg
3. add "(dirty data)" at checkProductPrice.feature
4. shop return order show page redund status element

v4.29.13 10/05/2021
-----------------
1. fastcheckout general error msg
2. myPlanAndBillingTW.feature add invoice step

v4.29.12 04/05/2021
-----------------
1. fix productSalesVolumeSortingInShop.feature mistake
2. rm usless step

v4.29.11 03/05/2021
-----------------
1. update sharp version

v4.29.10 28/04/2021
-----------------
1. update element staff setting label/checkbox
2. modify checkout setting page rollback step
3. rename the products for fixture-different-promotion tag

v4.29.9 22/04/2021
-----------------
1. modify card number
2. add waiting time

v4.29.8 21/04/2021
-----------------
1. modify delivery detail save button selector

v4.29.7 16/04/2021
-----------------
1. modify SetupData-HK
2. add modify attribute function
3. every8D close intercom button step

v4.29.6 12/04/2021
-----------------
1. modify SuperAdmin password

v4.29.5 08/04/2021
-----------------
1. MY account fastcheckout address rename
2. mark EAT-691 by SL-17330

v4.29.4 06/04/2021
-----------------
1. fix fastcheckout MY account address issue(SL-21091)

v4.29.3 25/03/2021
-----------------
1. modify fast checkout element
2. move messageCenterPageCreatedTimeLayoutV2.feature to BaseCase
3. select the 2nd object for zeek2door
4. add @smokeTest for fast checkout case

v4.29.2 22/03/2021
-----------------
1. rename the product
2. modify selector of delivery save button
3. change checked area

v4.29.1 19/03/2021
-----------------
1. modify publish button in Product Index Page

v4.29.0 16/03/2021
-----------------
1. EAT-1371	FEATURE - Search Order by Customer Custom Field
2. EAT-1370	[fix data] search 後 要檢查第一個是正確的商品
3. EAT-1366	[fix data] accounts 修正，並建立 subscription account
4. EAT-1343	Fix - menu id changed
5. EAT-1336	FIX - Get wrong delivery method, if order has return order
6. EAT-1304	Setting "Accept orders when out of stock" toggle.
7. EAT-1284	FMT Freeze - checkout FMT Freeze feature
8. EAT-1282 FMT Freeze -Edit Delivery and Payment Option feature
9. EAT-1261 Feature - Validation for Duplicate Barcode
10. EAT-1260 FIX - Adjust show return button criteria and hide cancel button if has return order
11. EAT-1258 Fix - merchant name in email should not display "&amp"
12. EAT-1257 FEATURE - Order invoice and packing slip private info handle
13. EAT-1221 Multilang: Allow Merchants to add/delete/hide languages on admin
14. EAT-1202 FIX - Delivery time excluded dates should be blocked by backend
15. EAT-1199 FEATURE - Admin - Onboard PayPal business account for PayPal 2.0 payment method
16. EAT-472	SL-5052 FEATURE - Add delivery remark function under order comments section

v4.28.9 17/03/2021
-----------------
1. select Zeek2door delivery
2. Bundle Group Edit Page edit rm wrong product
3. bulk publish/unpublish element

v4.28.8 15/03/2021
-----------------
1. add 10 acc for mobile p2
2. Plans Page plan reminder wording

v4.28.7 10/03/2021
-----------------
1. checkFastcheckoutFieldErrorMSG error message
2. add acc for storefront return
3. fix EAT-971 delivery name

v4.28.6 08/03/2021
-----------------
1. modify maxInstances of shardChrome and fix product review case
2. modify alt case
3. add redirect to fastcheckout page

v4.28.5 04/03/2021
-----------------
1. modify id of message center v3 page

v4.28.4 25/02/2021
-----------------
1. update customer_import_v2
2. remark form builder feature
3. addDifferentProductApplyPromotion.feature add step to fill phone number

v4.28.3 23/02/2021
-----------------
1. modify checking product in popup without using product list in order
2. add tag for account

v4.28.2 18/02/2021
-----------------
1. change preview us handle
2. add check and click new credit card
3. fix step mistake about fastcheckout
4. modify view page button

v4.28.1 05/02/2021
-----------------
1. fix wrong email acc
2. fastcheckout step selected product mistake
3. MY acc payment info redirection

v4.28.0 27/01/2021
-----------------
1. EAT-1188 Feature - Users are Able to Export Bulk Update File with Product Dynamic Fields
2. EAT-1197 SL-14590 - FEATURE - Buy now button add in wishlist page (3)
3. EAT-1243 [MC V3.0] admin panel control 
4. EAT-1259 FIX - return order report reason display
5. EAT-1274 Automation - Fast Checkout Page - (PayPal、Mini checkout、Buy now)
6. EAT-1147 FEATURE - Admin order setting & order management for checkout without email
7. EAT-1117 mobile version button assert
8. EAT-793 加25件不同商品進購物車，且享有指定分類折扣 & 全單折扣%
9. EAT-1006 SR-232 [JobService] 沒有更新 production env 導致大量上傳失敗
10. EAT-1144 Only super admin can create cross border delivery
11. EAT-1277 9th & 11th product not excluded, add fixed account and modified setupdata

v4.27.18 02/02/2021
-----------------
1. modify bulk assign credit check email/sms flow
2. rm account tag
3. modify popover
4. modify shop product index v2 regular price elements

v4.27.17 28/01/2021
-----------------
1. replace product of product list with products list in shop promotion page
2. modify pdf address
3. EAT-1376 FIX - F2E - Admin Promotion add/edit page cannot setup condition which is NOT in ascending order
4. EAT-1373 Fix: Enhancement characters limitation of "Delivery Remark"

v4.27.16 27/01/2021
-----------------
1. modify family mart store name

v4.27.15 25/01/2021
-----------------
1. modify kingsman PLP product of product list
2. modify SF with integration delivery zh/eng name and description 
3. change shoplytics page id
4. add redirected to Payment Info Page steps for hk payment creating features
5. remark steps for product review in pdp due to cache
6. replace row of selected product with selected products in bundle group create/edit page
7. replace row of preview products with preview selected products in bundle group create/edit page

v4.27.14 21/01/2021
-----------------
1. EAT-1324 Check promotion features can run the auto test on staging environment
2. modify super admin handle in account-staging.js
3. modify kingsman product of products list
4. modify promotion coupon and promotion assertion element
5. modify customer import v2 excel & fix coupon code error msg
6. modify promotion id and sf dirty data name

v4.27.13 18/01/2021
-----------------
1. modify SF Plus to Zeek2door
2. modify tag name

v4.27.12 14/01/2021
-----------------
1. modify elements in BundlePricingIndexPage
2. merge modularize delviery
3. modify account

v4.27.11 12/01/2021
-----------------
1. modify MyPlanAndBillingPage when click on change period button will see a popup

v4.27.10 04/01/2021
-----------------
1. modify full choose date
2. orderEditProductAdd modify delivery dropdown included 
3. addPagesTo404Redirect add Blog Post Page wait time
4. add shareCartLink-newCart coupon wait time

v4.27.9 04/01/2021
-----------------
1. modify birthday credit toggle selector
2. birthdayCreditAssign step
3. printLabelTimeSevenC2C filter dropdown rename

v4.27.8 04/01/2021
-----------------
1. modify filling password steps for qa email
2. add @fixture-excluded-product
3. fix the full date cross year issue

v4.27.7 24/12/2020
-----------------
1. add refresh on presetPublishStillExistStockNotify.feature
2. add @fixture-excluded-product for @C3808-3 and add acc

v4.27.6 24/12/2020
-----------------
1. add @ImageService tag
2. rm id
3. change selecting free gift step
4. change .env.staging sw/ss/sa to 40
5. add switching member point toggle steps
6. modify member center button of layout v2
7. add waiting time for coupon

v4.27.5 22/12/2020
-----------------
1. modify member center button of layout v2

v4.27.4 17/12/2020
-----------------
1. fix: delivery page element rename and modify element

v4.27.3 15/12/2020
-----------------
1. update my_upload.xls

v4.27.2 14/12/2020
-----------------
1. change 7-11 store
2. EAT-1335 FIX - Moving customer search and customer filter in customer index page
3. modify basket HK account password
4. modify account

v4.27.1 09/12/2020
-----------------
1. fix Register Notification SMS message
2. fix cancel order info wording

v4.27.0 08/12/2020
-----------------
1. EAT-1055 C15547 新增各種type的優惠活動、免運、任選、紅配綠正確
2. EAT-1135 C25874 確認台幣滿件拆單金額正確
3. EAT-1253 ✂加上紅配綠>滿件所有case折扣％(全單免運、會員折扣%）
4. EAT-1254 ✂加上紅配綠滿額所有case 折扣％（指定商品免運、全單百分比％）
5. EAT-1255 ❤加上紅配綠滿額所有case 固定金額折抵（無條件免運、無條件全單固定金額<金額設定超過可折抵金額>）
6. EAT-1256 ❤加上紅配綠>滿件所有case固定金額折抵(指定分類免運、全單固定金額折抵）
7. EAT-1158 SL-13109 Feature - order limit for trial merchant issue
8. EAT-1170 SL-13776 FEATURE - (1) [Admin] Apply return order at storefront setting establish
9. EAT-1171 SL-13777 FEATURE - (2) [Shop] Storefront create return application page
10. EAT-1172 SL-13778 FEATURE - (3) [Shop] Storefront return complete and info page
11. EAT-1173 SL-13779 FEATURE - (4) [Return order page] Return order detail page new feature
12. EAT-1174 SL-13780 FEATURE - (5) [Return order page] Execute product inspection flow
13. EAT-1175 SL-13781 FEATURE - (6) [Return order index] Return order index page filter product inspection status
14. EAT-1176 SL-13782 FEATURE - (7) [Return order report] Select filtered orders and export return report
15. EAT-1194 ENHANCEMENT - Site Security by recaptcha & rate limit
16. EAT-1200 FIX - Login email cannot be changed to deleted staff setting email or register
17. EAT-1159 SL-12980 FEATURE - MOLpay THB currency payment endpoint adjustment
18. EAT-1039 Delivery auto test
19. EAT-1041 check all Add/Remove/Update should test

v4.26.4 01/12/2020
-----------------
1. fix remark scenario by SL-17917
2. fix plan and email redirect to shop order show
3. modify manualOrderIntegrate711C2CDeliveryAndInvoice

v4.26.3 01/12/2020
-----------------
1. rm fixture-without-mobile-signup tag
2. modify should see alert after updating store credit page
3. modify product review feature with updating product setting page
4. modify promotion basecae delivery & payment
5. modify delivery basket plan tag 
6. fixed hk/tw plan to new flow

v4.26.2 26/11/2020
-----------------
1. EAT-1301 remove mes case and account from cucumber-testing

v4.26.1 25/11/2020
-----------------
1. change fb login account
2. selector change and fix scenario of member point
3. selector change and fix scenario of revert credit popover
4. check Country change successfully in Basic Setting Page

v4.26.0 18/11/2020
-----------------
1. EAT-1177 shop message and order message Merchant can send / receive message successfully(staff&super admin)
2. EAT-1178 fb message Merchant can send / receive message successfully
3. EAT-1292 fix the case of fb connecting form order setting page
4. EAT-1242 Fix - order edit should not minus tax fee
5. EAT-1169 SL-13328 FEATURE - EC project use new API to check merchant plan
6. EAT-1180 Split child order can change payment status (integrated payment method)
7. EAT-1195 SL-14587 - FEATURE - Buy now button Admin setting (1)
8. EAT-1196 SL-14588 - FEATURE - Buy now button template (2)
9. EAT-1159 SL-12980 FEATURE - MOLpay THB currency payment endpoint adjustment
10. EAT-1019 check all scenarios use mark order number should be on shop order confirm page
11. EAT-1122 C15323 HK滿額所有case
12. EAT-1124 C15636 加上紅配綠>滿額所有case
13. EAT-1126 C16168 紅配綠甲、滿件(case1)任選優惠甲商品金額加總>任選優惠金額
14. EAT-1127 C16169 紅配綠甲、滿件(case2)任選優惠甲商品金額加總>任選優惠金額
15. EAT-1128 C16170 紅配綠甲、紅配綠乙、滿件(case1)紅配綠甲、乙商品金額加總>紅配綠優惠金
16. EAT-1132 C16174 確認滿額apply 優惠順序正確
17. EAT-1133 C16175 HK滿件所有case及確認全單最優惠是會員優惠
18. EAT-1134 C16176 HK滿額所有case及確認全單最優惠是固定金額
19. EAT-1136 C15326 確認指定商品優惠、分類排除商品優惠、指定商品免運、任選、紅配綠、主商品加購品picker顯示正確
20. EAT-1138 C15328 確認選取的商品新增、編輯、刪除、上架、下架正確
21. EAT-1276 add weekly rollback of user profile page exist phone number and check all scenario
22. EAT-1280 Automation - Fast Checkout Page - (PayPal、Mini checkout、Buy now) - elements selector
23. EAT-1307 [Data Enhancement] - fix addBroadcastStaffPermissions should only check view/edit page

v4.25.17 23/11/2020
-----------------
1. modify the steps for staff without permission 
2. move checkGooglePayWithInvalidDevice to BaseCase2

v4.25.16 18/11/2020
-----------------
1. EAT-1281
2. rm elements in FreeShippingIndexPage & check and click toggle off
3. Shoplytic id element and create flow about update and admin singup flow
4. add hk trial account to develop and deployment
5. orderEditNoneVariationIncreaseAndDecrease.feature problem

v4.25.15 06/11/2020
-----------------
1. change Delivery/Payment/Order Status to status dropdown option(Orders Page)
2. change fb qa password

v4.25.14 05/11/2020
-----------------
1. let customer can send email verification in member center(SL-17347)
2. change customer import file
3. modify customer import error message
4. form build typo and product review selector update
5. remark molpayCreditCardCheckout

v4.25.13 03/11/2020
-----------------
1. modify phone country drop down
2. add @CouponCode tag
3. change fb qa password
4. modify hk accounts
5. modify error msg by the issue
6. change dashboard page id
7. rm check bcc in mail

v4.25.12 29/10/2020
-----------------
1. modify Shop Orders Show Page add element for Shop Orders Show Page
2. modify promotion campaign information string
3. add tag for feature

v4.25.11 27/10/2020
-----------------
1. modify id of ShopOrdersShowPage & ShopOrderConfirmPage
2. fix product review for SL-17154
3. modify the page to Shop Orders Show Page

v4.25.10 27/10/2020
-----------------
1. add env for prod-int2
2. add step for line order notify and add tags
3. modify fb qa password

v4.25.9 26/10/2020
-----------------
1. remark previewtw1
2. fix some element change and remove userAddressAssertion step
3. modify fb qa password

v4.25.8 21/10/2020
-----------------
1. fix SL-17061 release
2. add click button on updatePaymentDeliveryOrderStatusCheckLineNotify
3. remark PR-1989

v4.25.7 16/10/2020
-----------------
1. fix impacted by SL-16423
2. fix form builder index selector
3. fix Shop Cart Page applied promotion

v4.25.6 15/10/2020
-----------------
1. modify fb qa password and change fb account for shopFBLogin
2. add fbEmail for testuser0018
3. changeTab function
4. add check and click publish button on 3layercategory
5. modify dashboard page element select by xpath
6. modify change of SL-17061
7. modify fb step
8. change the order of delete customer
9. fix lineSetupAndLogin case

v4.25.5 07/10/2020
-----------------
1. move select delivery/payment step
2. modify fb qa password
3. add refresh and waiting time
4. one excel
5. modify MY accounts

v4.25.4 29/09/2020
-----------------
1. remark unqualifiedStripeCheckout & mobile-unqualifiedStripeCheckout
2. change delivery/payment/product/page/category selector
3. change side menu member access toggle selector
4. modify fb qa password

v4.25.3 25/09/2020
-----------------
1. modify fb qa password
2. fix the bug due to SL-17061
3. fix genDate function type error
4. update stripe and form builder feature
5. update bundleGroupPricing-unstackable should see 3 target
6. modify scenario to connect the same fb fan page
7. fix step and element for multiple fb fan page

v4.25.2 18/09/2020
-----------------
1. add step of close exclude products panel notification
2. reset fb password
3. modify element of channel access token block
4. rm Facebook Page dul element
5. pageIndex.feature modify switch and redirected to shop custom page
6. remark planBillingErrorMesssage
7. sf delivery option "Centre Pickup" modify to "Business Station"
8. modify wording in checkStaffAccessRightwording.feature
9. modify discountCheckout-failed.feature error msg
10. modify view log
11. add every8d page "click on search sms button" step
12. modify CustomerDetailPage element
13. fix CategoryViewProductsPage id
14. modify Download Button element and remark C3879-3
15. change delivery/payment/product selector
16. fix form builder selector
17. fix the order of last order and add waiting and sample of genPeriodHour
18. modify lineSetupAndLogin.feature

v4.25.1 11/09/2020
-----------------
1. modify sale price and chnage My Plan to My Subscription & Billing
2. change elemets regular price
3. modify popover sale price
4. modify fbNotifyLoggedOutConnectDiffFbPageAtOrderSettingPage
5. sold out product related product order
6. change row of products to selected product
7. modify pagesIndex and add refresh after delete membership tier
8. add smokeTest for advanced page
9. change credit card number & fmt pick store steps
10. modify product review scenario and rm row of products for promotion
11. add taishin
12. modify admin plan checkout page and change step
13. modify switch to frame description
14. add promotion basecase accounts
15. add all data dirty data

v4.25.0 02/09/2020
-----------------
1. EAT-1090 Enable rollout key + fb disconnect, should not display fb tab in message center
2. EAT-1091 Enable rollout key + fb connect, should display fb tab in message center
3. EAT-1092 Facebook messanger CAN support filter open / unread / starred / achived
4. EAT-1093 Facebook messenger NOT support search
5. EAT-1094 Customer can send / receive message successfully
6. EAT-1095 Merchant can send / receive message successfully
7. EAT-1096 Can star / unstar a conversation successfully
8. EAT-1097 Can archive / unarchive a conversation successfully
9. EAT-1098 Merchants can see messages are sent from which user (shop owner)
10. EAT-1099 Merchants can see messages are sent from which user (staff)
11. EAT-1100 Merchants can see messages are sent from which user (superadmin)
12. EAT-1101 LINE CAN support filter open / unread / starred / achived
13. EAT-1102 LINE messenger NOT support search
14. EAT-1104 When there are unread msg on conversation list, red dot will be display on tab 
15. EAT-1105 When there are NO unread msg on conversation list, red dot will NOT display on tab
16. EAT-1106 Super-admin would not affect unread status of message
17. EAT-1107 Can star / unstar a conversation successfully
18. EAT-1108 Can archive / unarchive a conversation successfully
19. EAT-1109 Merchants can see messages are sent from which user (shop owner)
20. EAT-1110 Merchants can see messages are sent from which user (staff)
21. EAT-1111 Merchants can see messages are sent from which user (superadmin)
22. EAT-1167 SL-10641  FEATURE - store pickup delivery option can set up delivery time for customer
23. EAT-1168 SL-6873 FEATURE - Set up amount range for SF api delivery fee (paid by consignee)
24. EAT-1165 SL-13149 Share Cart Link
25. EAT-992 SL-10290 FEATURE - Checkout Applied bundle group pricing promotion logic
26. EAT-1120 C15321 確認滿件apply優惠順序正確 （皆不使用
27. EAT-1121 C15322 確認滿額apply 優惠順序正確
28. EAT-1123 C15626 加上紅配綠>滿件所有case
29. EAT-1125 C16167 紅配綠優惠價+滿額
30. EAT-1129 C16171 加上紅配綠>滿件所有case及確認全單最優惠是折抵％
31. EAT-1130 C16172 確認滿件apply 優惠順序正確

v4.24.2 04/09/2020
-----------------
1. modify id of payment setting page
2. modify conflictBetweenPromotionLanguage.feature
3. rm this.log(text)
4. modify line template name

v4.24.1 31/08/2020
-----------------
1. modify design page element
2. OrdersShowPage rm third party element view only attribute
3. modify orders show page name/email/phone field
4. @EAT-1161-3 rm @fixture-staff
5. add kingsman account
6. modify bulkUpdatePaymentDeliverySetting-3 step
7. modify account testuser0038/testuser0041
8. add broadcast account for preview
9. create setupData for adding testuser@shoplineapp.com to staff
10. rm browser_step function which is dulplicated
11. fix one scenario and update product bulk update file
12. add staging accounts
13. change plan credit card num
14. fix plan checkout error msg and remark my plan
15. add input refund amount field
16. mark memberPriceCheckout9 step due to SL-15668
17. change fb fan page
18. change product bulk import file
19. fix mistake of fb fab page and add scroll down
20. change plan card number and assert wording
21. modify stripe iframe
22. modify shop signup/login submit button
23. modify all customer import file which updated by new feature
24. modify billing plan page and modify feature
25. modify only super admin can delete tcat delivery
26. add account multi to deployment
27. modify product edit page product identifier
28. fixed google mail redirect page popup
29. add member tier activate step which only can executed by owner
30. update sf address
31. update fb password to testuser029
32. Create promotion basecase accounts in preview

v4.24.0 29/07/2020
-----------------
1. EAT-1164 訂單報表：新增「顧客取消原因」欄位
2. EAT-1163 執行出貨
3. EAT-1162 admin tab、over all cancel flow、金流串接、Email、Admin-order detail
4. EAT-1161 admin- 總開關 & 子開關
5. EAT-1160 SL-9607 FIX - Tappay 3d toggle default to ON
6. EAt-1156 Enhancement - Block Sunday in Ninja Van Pickup Reservation
7. EAT-1089 On order detail page, can update "note" and customer should NOT be receive notificationmail successfully
8. EAT-1088 C16258 On order detail page, can update "reply" and customer should be receivenotification mail successfully
9. EAT-1054 C15482 同一商品可同時套用指定商品優惠or任選＆指定商品贈品＆指定商品免運
10. EAT-1053 C15481 同一商品可同時相同目標客群下,設定指定商品優惠 自動套用＆優惠代碼各一檔
11. EAT-1052 C15480 同一商品可同時相同目標客群下,設定多檔指定商品贈品
12. EAT-1051 C15479 同一商品可同時相同目標客群下,設定指定商品優惠＆任選優惠＆指定商品免運活動各一檔
13. EAT-1050 C15478 同一商品不可同時相同目標客群下,設定指定商品優惠、任選、指定商品免運 自動套用＆推薦代碼各一檔
14. EAT-1049 C15477 同一商品不可同時相同目標客群下,同時設定任選優惠與紅配綠
15. EAT-1048 C15476 同一商品不可同時相同目標客群下,設定多檔指定商品優惠、任選優惠、指定商品免運
16. EAT-1044 SL-5554 Add product review
17. EAT-1000 SL-7848 [CN] Bulk import image / Image Gallery (Phase 1)
18. EAT-472 SL-5052 FEATURE - Add delivery remark function under order comments sectio

v4.23.3 28/07/2020
-----------------
1. change fb password
2. modify admin language element
3. modify selector and add step for order invoice
4. modify add to cart button element
5. mark delete cookie
6. add check and click fb page select all unchecked checkbox
7. modify checkLayoutEngineMerchant-theodorawatches
8. add stg new account
9. rename promotion of promotion basecase

v4.23.2 16/07/2020
-----------------
1. add and modify return orders page
2. rm some tags, reduce our maintainance
3. modify place order butto
4. typo .env
5. change .env variable
6. add waiting time and should see
7. rm count of pages
8. rm trun on/off price range toggle steps and add check price range toggle
9. rename promotion of promotion basecase
10. update einvoice website code and api pwd
11. modify stripe card number
12. modify customer import phone number
13. change fb password

v4.23.1 09/07/2020
-----------------
1. distinguish 任選&任選 and 任選&紅配綠 (promotionBasecaseSetupData)
2. modify the limits of over minium amount promotion (promotionBasecaseSetupData)
3. change 滿件from 9 to 8 (promotionBasecaseSetupData)
4. create 21st Product for Checkout (promotionBasecaseSetupData)
5. change .env variable
6. make latest tools html
7. modify execute shipment OK button
8. add env if it need run by component
9. modify the name of promotion (promotionBasecaseSetupData)
10. add new-account-for-storefront-return
11. modify messager center element
12. modify fb element
13. simply fill stripe card number
14. add account to productionInternal and change real staging to account staging
15. add check and click for fb connect step 
16. modify place order button & row of product detail selector)
17. add email waiting time and modify available close time

v4.23.0 30/06/2020
-----------------
1. EAT-981 SL-10288/SL-10289 FEATURE - Bundle Group Pricing Promotion Add/Edit page
2. EAT-982 SL-10214 FEATURE - Add member point management page in admin
3. EAT-983 SL-10218 FEATURE: Add member point permission within setting in admin
4. EAT-993 SL-10291 FEATURE - Bundle Group Pricing Promotion SEO/Banner/term Setting Page
5. EAT-994 SL-10292 FEATURE - Storefront Promotion page for Bundle Group Pricing
6. EAT-995 SL-10293/SL-10294 FEATURE- promotion page for bundle group pricing (bundle cart/filter)
7. EAT-996 SL-10297 FEATURE - Bundle Group Pricing Promotion Usage Record + Export
8. EAT-997 SL-10298 FEATURE - Admin Menu Navigation Display Bundle Group Pricing Promotion Page in menu item list
9. EAT-998 SL-10295 FEATURE - Admin Order Show Page display bundle group tag
10. EAT-999 SL-10296 FEATURE - Storefront Product Detail Page Display Bundle Group Pricing Hint
11. EAT-1001 SL-9816 Notification Customization P1 - Custom Text in Notification Email Header and Footer
12. EAT-1004 Notification Customization P1 - Custom Text in Notification Email Header and Footer-2
13. EAT-1005 Notification Customization P1 - Custom Text in Notification Email Header and Footer-3
14. EAT-1018 SL-9890  Notification Customization P3 - Custom Text in Notification SMS Footer
15. EAT-1022 FEATURE - Add Image Alt for Add-on Products Image/Gift Image/Category Banner
16. EAT-1023 Image Alt Tags - Advanced Page + Express Checkout

v4.22.3 30/06/2020
-----------------
1. remove testuser0300-0305 promotion tag
2. mes setupdata
3. modify message page input element
4. add shop login select language english
5. change no sandbox and headless order
6. remark EAT-827-1
7. modify bundle create page available date button
8. add wait time when delete second member tier
9. add tag & modify setupData & rollback step

v4.22.2 17/06/2020
-----------------
1. add TEST_ACCOUNT_UNMARK
2. fix customers_import file(add recipient phone)
3. add storefront select english after login
4. devide checkLayoutEngineMerchant
5. add smokeTest/mesSmokeTest
6. add checkAndClickAnotherElement

v4.22.1 22/05/2020
-----------------
1. fix check action logs add google login
2. add step click on proceed btn
3. modify credit card error message
4. rm ecpay if scenario target is not ecpay
5. change 19th to 12th product for checkout
6. add emap tag to account
7. reslove the order of variation issue and mark the report total
8. add onequicktest and sequence issue
9. promotion invalid time delay 1day
10. message receive email need to edit at advanced settings
11. add in:anywhere for email broadcast
12. modify promotionCannotEditInvalidDate.feature without claer
13. change plan to checkout
14. change fb passward
15. modify html content
16. changed superadmin pwd and rm some log
17. modify shop testuser passward
18. install-testrail-api
19. update error msg
20. add waiting time and mv steps forward
21. fix user info be hidden at list page
22. fix line login button
23. update selector and add search member

v4.22.0 11/05/2020
-----------------
1. EAT-1087 C16245 ❤Click order NO. to link to order detail page
2. EAT-1086 C16424 ❤Show user profile on the right hand
3. EAT-1085 C16425 ❤When clicking on the manual refresh bar, page should NOT refresh & message list is refreshed to get new messages
4. EAT-1084 C16256 ❤Click the input box should get new messages
5. EAT-1083 C16251 ❤Merchants can see messages are sent from which user (superadmin)
6. EAT-1082 C16250 ❤Merchants can see messages are sent from which user (staff)
7. EAT-1081 C16249 ❤Merchants can see messages are sent from which user (shop owner)
8. EAT-1080 C16419 ❤Can archive / unarchive a conversation successfully
9. EAT-1079 C16418 ❤Can star / unstar a conversation successfully
10. EAT-1078 C16269 ❤Super-admin would not affect unread status of message
11. EAT-1077 C16268 ❤When there are NO unread msg on conversation list, red dot will NOT display on tab
12. EAT-1076 C16267 ❤When there are unread msg on conversation list, red dot will be display on tab
13. EAT-1075 C16263 ❤Merchant can send / receive message successfully
14. EAT-1074 C16262 ❤Customer can send / receive message successfully
15. EAT-1073 C16439 ❤Order messenge CAN support search
16. EAT-1072 C16438 ❤Order message CAN support filter open / unread / starred / achived
17. EAT-1071 C16422 ❤Show user profile on the right hand
18. EAT-1070 C16423 ❤When clicking on the manual refresh bar, page should NOT refresh & message list is refreshed to get new messages
19. EAT-1069 C16255 ❤Click the input box should get new messages
20. EAT-1068 C16248 ❤Merchants can see messages are sent from which user (superadmin)
21. EAT-1067 C16247 ❤Merchants can see messages are sent from which user (staff)
22. EAT-1066 C16246 ❤Merchants can see messages are sent from which user (shop owner)
23. EAT-1065 C16417 ❤Can archive / unarchive a conversation successfully
24. EAT-1064 C16416 ❤Can star / unstar a conversation successfully
25. EAT-1063 C16266 ❤Super-admin would not affect unread status of message
26. EAT-1062 C16265 ❤When there are NO unread msg on conversation list, red dot will NOT display on tab
27. EAT-1061 C16264 ❤When there are unread msg on conversation list, red dot will be display on tab
28. EAT-1060 C16261 ❤Merchant can send / receive message successfully
29. EAT-1059 C16260 ❤Customer can send / receive message successfully
30. EAT-1058 C16441 ❤Shop message CAN support search
31. EAT-1057 C16440 ❤Shop message CAN support filter open / unread / starred / achived
32. EAT-1056 add new filter condition `Add from` for line/fb/sms/email 
33. EAT-945 SL-10385 HOTFIX - Broadcast content add link html encode issue

v4.21.0 28/04/2020
-----------------
1. EAT-1043 SL-10513 前台商品能以銷量作為排序
2. EAT-1021 FEATURE - Add Image Alt for Product Image
3. EAT-1010 SL-11142  FEATURE - 711/FMT non-integrated delivery: add 2 new delivery options
4. EAT-980 下訂單後更換倉庫
5. EAT-978 SL-10781 Fix - Admin - 修復送貨方式 field 的驗證方式
6. EAT-977 SL-9878 FEATURE - (3) Order edit / manual order for member price by tier
7. EAT-975 SL-9610 Feature - (4) Order activities logs add discount distribute amount
8. EAT-966 order edit	加入商品到訂單中，增加/減少商品數量(有限/無限數量)
9. EAT-963 manual order
10. EAT-816 one上更換倉庫，admin product edit能正確顯示該倉庫的數量
11. EAT-814 變更訂單送貨狀態為已發貨

v4.20.2 28/04/2020
-----------------
1. add fixture-without-promotion-basecase at preview 60~69
2. modify one excel file and add updated quantity to string
3. change basic plan selector
4. modify plan checkout page id
5. add step when change country
6. add refresh and modify customer age
7. modify the step of assign categiries
8. rm useless tags

v4.20.1 13/04/2020
-----------------
1. tools path update
2. modify MessageCenterPage row of message list
3. rename SF delivery to Zeek2door
4. modify exportUsageRecord.feature tag
5. countryUpdate.feature add @premiumFeature
6. remove rollout key back-in-stock-notify for internal
7. h1 tag will not upper char
8. modify one basecase waiting time for sync
9. modify AddonCreatePage.js select product popup
10. modify the space for one variation case
11. modify gmail login step
12. modify order number(16 to 17 char) and add step for sync

v4.20.0 10/04/2020
-----------------
1. EAT-991 check price
2. EAT-979 FIX - Adjust search return order by product name logic
3. EAT-972 FEATURE - Taxes settings create /edit page can add double tax handling (4)
4. EAT-971 FEATURE - Product edit/create page "have taxes" toggle setting (3)
5. EAT-970 FEATURE - Admin panel taxes settings index page (2)
6. EAT-969 FEATURE - (5) Order report、member center、order detail page invoice tax check
7. EAT-968 FEATURE - (4) Child order should able to change order invoice tax type
8. EAT-967 FEATURE - (1) Admin should able to set up shop invoice tax type
9. EAT-965 FIX - Welcome credit link crash in v1 theme -1
10. EAT-960 FEATURE - Order Information on Admin [6]
11. EAT-959 FEATURE - Manual Order [5]
12. EAT-958 FEATURE - Order Information on storefront [4]
13. EAT-957 FEATURE - Provide drop down list on storefront [3]
14. EAT-956 FEATURE - Admin delivery option create
15. EAT-954 FEATURE - Membership upgrade reminder at member center
16. EAT-946 FEATURE - revert credit with original expiry date
17. EAT-944 FIX - Welcome credit link crash in v2theme
18. EAT-942 Fix - Shop - V2 theme product title liquid escape issue (new)
19. EAT-941 Fix - 切換幣別後 多顯示0 元
20. EAT-939 FIX - Some filed with XSS issue
21. EAT-482 FIX - Instagram Import Authorization Error
22. add @fixture-without-promotion-basecase tag

v4.19.1 23/03/2020
-----------------
1. change new component for inventory page
2. EAT-1116 Fix all message scenarios from v2 -> v1
3. modify line login button
4. remark @C3879-3 due to SL-12724
5. modify checkLayoutEngineMerchant.feature
6. modify add to cart button, product quantity field, decrease button
7. fix get idcode
8. modify twoProductWithWeightLoggedInAdvancedPage711B2CV1-extraProduct.feature
9. update cap setting for head chrome
10. modify One feature 1.14.0
11. mark product upload preview step

v4.19.0 12/03/2020
-----------------
1. EAT-964 檢查layout engine merchant是否有被新功能影響造成小黃人
2. EAT-739 SL-8340 FIX - promotion_hour is OFF, promotion can't be set after edit invalid date
3. EAT-938 C15061 HK滿件所有case
4. EAT-937 C10471 任選優惠甲、滿件(case1)任選優惠甲商品金額加總<任選優惠金額
5. EAT-936 C10473 任選優惠甲、任選優惠乙、滿件(case1)乙商品金額加總<任選優惠金
6. EAT-935 C11327 滿額所有case
7. EAT-934 C11326 滿件所有case
8. EAT-933 C10472 任選優惠甲、任選優惠乙、滿件(case1)任選優惠甲、乙商品金額加總>任選優惠金
9. EAT-932 C11321 任選優惠甲、滿件(case2)任選優惠甲商品金額加總>任選優惠金額
10. EAT-931 C10470 任選優惠甲、滿件(case1)任選優惠甲商品金額加總>任選優惠金額
11. EAT-930 任選優惠價+滿額
12. EAT-927 SL-9728 Feature - 2- Prd List, 進階分頁 on theme V2 : adjust price display rule
13. EAT-926 SL-10115 Fix - Shop - Custom Remarks Cannot Render Issue
14. EAT-925 SL-10225 copy current issue url FIX - bulk assign credit with select all should send notification
15. EAT-924 SL-10338 Fix - api - fix affiliate campaign without promotion cannot check out
16. EAT-923 SL-10343 FIX - Apply affiliate code without promotion should also count in the campaign
17. EAT-820 FEATURE - Can use customer select all if has advanced filter
18. EAT-819 SL-7145 New return order management (phase 1)
19. EAT-817 SL-9391 SL-9393 Delivery fee calculated using variant weight
20. EAT-750 SL-4455 FIX - Handle categories display (admin/shop) for product preset publish settings
21. EAT-620 SL-6859 FIX - bundle product should not be added to minicart over inventory
22. divide basecase by headless and headful mode

v4.18.3 11/03/2020
-----------------
1. remark all MC 1.0 scenarios
2. rm one production account from develop

v4.18.2 24/02/2020
-----------------
1. EAT-1003 SL-11411 Fix unified admin
2. update v2 login page id and change the order of steps on back in stock
3. update the redirection when update basic setting
4. add env for staging
5. fix variant quantity default become 0
6. modify DashboardPage id
7. update selector and can be used on staging
8. modify taishin card number for staging
9. add connectFbPageWithoutAllPermission.feature
10. add refresh step
11. add update merchant for v2 theme
12. modify the way search testuser
13. modify label
14. update side menu selector
15. modify broadcast permission checkbox
16. update selector

v4.18.1 03/02/2020
-----------------
1. modify shop url
2. add wait for shop checkout page loading
3. add log for error console
4. change fb password
5. modify channel list of line developers page
6. assert the result order
7. add mark reassign name avoid fail of different name
8. modify genMonth
9. modify line login button and fb continue button
10. rm theme-kingsman for tcat and add account for fixture-tcat-order
11. modify fb plugin selector
12. modify family pick store page store name
13. fix adding new confirm page from fb
14. mark form builder seo edit step and modify bulkUpdatePaymentDeliverySetting.feature
15. add default quantity and update notificationEmail
16. modify h1 scenario default value = 0
17. modify advancedpagH2Tag to advancedPageTextWithTitle
18. fix product search of productListingSoldOutUI.feature

v4.18.0 09/01/2020
-----------------
1. EAT-903 C15007 ❤Click on the arrow icon(s) next to each message sections, can rearrange the ordering of message sections
2. EAT-804 C15008 ❤Click on the delete icon, can clear the message section from the message content body
3. EAT-905 C15009 ❤Message Setting can set the message send time
4. EAT-805 編輯規格 (新增款式)
5. EAT-806 編輯規格 (移除款式)
6. EAT-807 編輯規格 (勾選多筆刪除款式)
7. EAT-808 庫存管理頁面 單筆編輯庫存
8. EAT-809 庫存管理頁面 批次編輯庫存
9. EAT-810 checkout 加入購物車
10. EAT-811 shop訂單成立
11. EAT-812 order edit
12. EAT-813 取消 送貨狀態為備貨中的訂單
13. EAT-815 one上更新庫存，admin product edit能正確更新數量
14. EAT-795 單筆新增商品 (無規格)
15. EAT-796 單筆新增商品 (有規格)
16. EAT-797 excel匯入商品
17. EAT-798 excel更新商品
18. EAT-800 新增加購品 (無綁定主商品)
19. EAT-801 新增加購品 (有綁定主商品)
20. EAT-802 新增贈品 (無綁定主商品)
21. EAT-799 新增贈品 (有綁定主商品)
22. EAT-803 編輯規格 (無->有)
23. EAT-804 編輯規格 (有->無)
24. EAT-962 編輯規格 (改變規格)

v4.17.1 30/12/2019
-----------------
1. change file to component
2. modify w0 shop url
3. modify tag name and mark assignProductAndRenameCategory.feature
4. mark check chinese calendar
5. modify calendar table element
6. add @fixture-shop and modify select to click on
7. sold out page should not exist page
8. mark @EAT-744-5
9. change maxInstances
10. change fb&line broadcast old scenario to template
11. add check and click before connect fb and click toggle
12. fb order notify checkout with new account and add refresh
13. mark removeAppNotReceiveEmail and rm duplicated shop
14. add fixture-broadcast-customertag
15. add theme kingsman for deployment
16. changed domain
17. update kingsman product of products list)
18. add new account 
19. change to test number for sms order notify count
20. update element selector and rm check page title count
21. update over start time and default start time
22. modify home page id
23. modify dateNow and hourNow
24. add tags @MesQuickTest
25. setup link updated
26. add tag fixture-layout-engine fixture-layout-v2 to previewtw40
27. update every8d setuplink, bundlePriceCreatPage prestart time, update productListingSoldOutUI
28. add-new-layout-v2-account-on-deployment

v4.17.0 02/12/2019
-----------------
1. EAT-840 C14947 ❤When rollout key is on, be able to send max 3 types of messages (text / image / card message) within a facebook broadcast message
2. EAT-843 C14949 ❤Click "Upload image" button, can choose images from my local device to upload to this message content
3. EAT-844 C14950 ❤Mouseover uploaded image preview, can click and edit a image in this section
4. EAT-845 C14951 ❤Click "Card" button on the left column, check all character input box count limit is correct
5. EAT-846 C14968 ❤Check "card" most add to three buttons
6. EAT-847 C14955 ❤Click on "Add a button" on the forth section, can see and new pop up window and add button title and redirect link of this button
7. EAT-848 C14952 ❤Check "Number of messages" counter is correct, messages widget ≦ 3
8. EAT-849 C14953 ❤Click on the arrow icon(s) next to each message sections, can rearrange the ordering of message sections
9. EAT-850 C14954 ❤Click on the delete icon, can clear the message section from the message content body
10. EAT-851 C14969 ❤Message Setting can set the message send time
11. EAT-894 C14970 ❤When rollout key is on, be able to send max 3 types of messages (text / image / card message) within a line broadcast message
12. EAT-895 C14971 ❤Check broadcast name character for input box ≦ 80
13. EAT-896 C14972 ❤Click on the "text" input field, character count for text input box ≦ 400
14. EAT-897 C15002 ❤Click "Upload image" button, can choose images from my local device to upload to this message content
15. EAT-898 C14974 ❤Mouseover uploaded image preview, can click and edit a image in this section
16. EAT-899 C15003 ❤Click "Card" button on the left column, check all character input box count limit is correct
17. EAT-900 C15004 ❤Check "card" most add to three buttons
18. EAT-901 C15005 ❤Click on "Add a button" on the forth section, can see and new pop up window and add button title and redirect link of this button
19. EAT-902 C15006 ❤Check "Number of messages" counter is correct, messages widget ≦ 3

v4.16.1 02/12/2019
-----------------
1. add RollbackData-9
2. modify view my shop button
3. modify productBulkUpload.feature
4. add bundle stackable off element
5. mark up the import status issue
6. modify stock picking list
7. modify updateOrderDeliveryStatusPaymentCheckFbNotify step
8. move the account
9. modify @BaseCase tag
10. add @fixture-shopee-api-integration
11. modify available date button
12. modify the step of add promotion dropdown
13. modify checkout product
14. modify notify when in stock button
15. modify the id of ShopHomeLayoutVTwoPage
16. modify cellphone number

v4.16.0 21/11/2019
-----------------
1. EAT-490 SL-5637 FEATURE - Send/Resend Verification Email when add/edit email in Member Center
2. EAT-628 - Edit Form -
3. EAT-626 - Form Listing Page -
4. EAT-634 SL-5646 API /SHOP- Checkout handle Bundle Pricing Apply
5. EAT-691 FEATURE - Shopee integration (Multiple channel inventory)
6. EAT-632 Add feature Order reassignment into basic testcase
7. EAT-818 Manual order P3 (integrate 7-11 delivery and invoice)
8. EAT-736 SL-8105 FIX - Cart Add-on reload issue makes cart promotion unshown
9. EAT-738 SL-8544 FIX - LINE Login connection should be deleted when user is deleted
10. EAT-737 SL-8461 FIX - Return order should only included selected products
11. EAT-735 SL-6644 FEATURE - Admin allow new layer menu navigation
12. EAT-677 FEATURE -admin can remove product variation to some existing product
13. EAT-740 SL-8013 FEATURE - Scheduled Available Time for Product Phase.1
14. EAT-446 SL-4168 FEATURE - Product publish time setting - update system product log description
15. EAT-676 FEATURE -admin can add product variation to some existing product
16. EAT-690 check all delivery order edit button
17. EAT-741 SL-6688 FEATURE - Increase Product Variant Combinations Limit to 400
18. EAT-724 SL-7308 - HOTFIX - SHOP - Express checkout page cannot select 7-11 shop
19. EAT-726 SL-7843 FIX - Order edit cannot delete product if its variation is changed before & picking list cannot export
20. EAT-723 SL- 7113 FIX - Action Logs for Bundle Pricing&Shopping Cart Add-on Items
21. EAT-722 SL - 7223 Fix - Shop - cant get product variation image in checkout page
22. EAT-744 SL-2788 Wishlist - Phase 1
23. EAT-749 SL-6487 FEATURE - can apply custom discount in manual order page
24. EAT-767 SL-8430 EPIC - Storefront product page variation label swatches
25. EAT-790 SL-7087 FEATURE - Bundle Pricing Phase 2 - Promotion Page
26. EAT-791 MY CN cannot choose plan
27. EAT-472 SL-5052 FEATURE - Add delivery remark function under order comments section

v4.15.1 14/11/2019
-----------------
1. remove promotion expired date
2. modify field error message element
3. add gmail waiting time
4. add should see
5. modify row of mail list element
6. add promotion rollback step
7. change to row of mail list and remark C4080-2
8. add step to set quantity of add-on item
9. add basic setting email and addon toggle rollback step
10. change search mail list selector and rollback to search mail list remark mobile-saveAddressCheck
11. add credit and email verification toggle rollback step
12. update shop product show selector
13. add HK account
14. modify fb password
15. mark FB connecting step
16. change dashbroad element
17. add cart item and fb channel connect button rollback step

v4.15.0 31/10/2019
-----------------
1. EAT-756 C14480 若店家曾 connect line@ 並且有對話紀錄，不管再次 disconnect 後連結 “相同的” 或是 “不同的” line@，不會清除既有的對話紀錄
2. EAT-728 SL-8338 FEATURE - Admin update inventory API call Benchat send Email
3. EAT-865 C14928 ❤Email broadcast with link should be send and received correctly
4. EAT-870 C14979 ❤Check target group is correct
5. EAT-866 C14975 ❤Check all Conversion Funnel data：send / received / read / CTA / orders is correct
6. EAT-872 C14981 ❤Broadcast 1：When broadcast without any link, should be received correctly
7. EAT-871 C14980 ❤Check message content and sent time is correct
8. EAT-821 C14931 ❤FB broadcast with link should be send and received correctly
9. EAT-823 C14910 ❤On Facebook page, can see a section title "Connect with Facebook@" and description content
10. EAT-824 C14911 ❤Click "Connect" button without logging into FB in browser
11. EAT-825 C14912 ❤Click "Connect" button after logging into FB in new browser tab
12. EAT-826 C14913 ❤Allow all permission and successfully reach "connect to facebook page" step
13. EAT-827 C14914 ❤Don't allow all permission and error will pop up to indicate what permission is still lacking and click to "go back" to permission page
14. EAT-828 C14915 ❤Connect to FB page
15. EAT-829 C14916 ❤At "connect to facebook page" step, click log out of Facebook
16. EAT-830 C14917 ❤Check out order and subscription FB notification at order checkout page
17. EAT-831 C14918 ❤Check out order and subscription FB notification at order confirmation page
18. EAT-832 C14921 ❤Check send order notification msg to customer
19. EAT-833 C14922 ❤Change all order status in orders detail page and click send msg to notify customer
20. EAT-834 C14923 ❤Change all delivery status in orders detail page and click send msg to notify customer
21. EAT-835 C14924 ❤Change all payment status in orders detail page should not send message for customer
22. EAT-836 C14925 ❤Change payment/delivery/order status should display latest status on msg
23. EAT-837 C14919 ❤Turn off the Facebook order update notification toggle button
24. EAT-838 C14920 ❤Should not see the checkbox at checkout page and order confirmation page
25. EAT-839 C14900 ❤Click brodcast to go to broadcast center
26. EAT-841 C14967 ❤Check broadcast name character for input box ≦ 80
27. EAT-842 C14948 ❤Click on the "text" input field, character count for text input box ≦ 80
28. EAT-852 C14933 ❤Check all Conversion Funnel data：send / received / read / CTA / orders is correct
29. EAT-853 C14946 ❤Check facebook broadcast data：send = received = read
30. EAT-856 C14943 ❤Check target group is correct
31. EAT-857 C14944 ❤Check message content and sent time is correct
32. EAT-858 C14935 ❤Broadcast 1：When broadcast without any link, should be received correctly
33. EAT-879 C14929 ❤SMS broadcast with link should be send and received correctly
34. EAT-880 C14988 ❤Check all Conversion Funnel data：send / received / read / CTA / orders is correct
35. EAT-881 C14989 ❤Check SMS broadcast data：send = received = read
36. EAT-884 C14992 ❤Check target group is correct
37. EAT-885 C14993 ❤Check message content and sent time is correct
38. EAT-886 C14994 ❤Broadcast 1：When broadcast without any link, should be received correctly
39. EAT-893 C14930 ❤Line@ broadcast with link should be send and received correctly
40. EAT-906 C15010 ❤Check all Conversion Funnel data：send / received / read / CTA / orders is correct
41. EAT-907 C15011 ❤Check line broadcast data：send = received = read
42. EAT-910 C15014 ❤Check target group is correct
43. EAT-911 C15015 ❤Check message content and sent time is correct
44. EAT-912 C15016 ❤Broadcast 1：When broadcast without any link, should be received correctly
45. EAT-786 C14702 商品已在追蹤清單中，移除追蹤不會訂閱貨到通知我
46. EAT-787 C14730 移除擴充 app，不會收到 Email 
47. EAT-778 C14694 庫存為0的商品/規格出現貨到通知我按鈕
48. EAT-777 C14693 未登入狀態點選貨到通知我的按鈕會出現登入/註冊的tooltip
49. EAT-785 C14701 商品已在追蹤清單中，取消訂閱貨到通知我，不會從追中清單中移除
50. EAT-781 C14697 加入追蹤清單=訂閱貨到通知我
51. EAT-782 C14698 訂閱貨到通知我=加入追蹤清單
52. EAT-779 C14695 預約開賣，庫存為0
53. EAT-783 C14699 取消追蹤清單=取消貨到通知我
54. EAT-771 C14687 Product with multiple variation 0>10
55. EAT-769 C14685 Product with 2 variation 0>10 (其中一個規格無庫存)
56. EAT-773 C14690 在訂閱貨到通知後，將商品從追蹤清單中移除
57. EAT-748 SL-8228 -FEATURE - Broadcast Advance filter add customer segment for customer tag
58. EAT-784 C14700 取消訂閱或到通知我,不會取消追蹤清單
59. EAT-780 C14696 一頁商店，庫存為0 > 不會出現貨到通知我按鈕
60. EAT-774 C14691 不同顧客訂閱同一項商品，都會收到E-mail
61. EAT-775 C14692 單一顧客訂閱多項商品，當商品庫存逐項變更為正數 10，要依商品狀況收到Email
62. EAT-774 C14691 不同顧客訂閱同一項商品，都會收到E-mail
63. EAT-770 C14686 Product with 2 variation 0>10 (兩個規格皆無庫存)
64. EAT-768 C14683 Product without variation 0>10
65. EAT-772 C14688 User unsubscribe product
66. EAT-776 C14731 商品從下架調整為上架時，會收到 Email 通知

v4.14.1 29/10/2019
-----------------
1. fix modify quantity instead of filling field
2. fix dropdown option switch to click included
3. fix delivery & payement loading
4. rm tag from orderAddmanualPermission
5. fb login reset key before login
6. add log for 711B2cCheckout-limitationAlert
7. add accounts and tags
8. all gmail add the step should see field
9. add the waiting time for email
10. add should see
11. returnOrderUpdate rm useless roll back steps
12. change addon item toggle related element and steps
13. fix fb template internal testing and order of new fb page

v4.14.0 18/10/2019
-----------------
1. EAT-798 excel更新商品
2. EAT-725 SL-7369 HOTFIX - email user cannot setup password
3. EAT-611 SL-6740 FEATURE - user import support import credit/gender/birthday
4. EAT-629 - Form at Shop -
5. EAT-615 SL-6252 FIX - Sort customer's comments by created time incrementally_layout_v1
6. EAT-618 SL-6263 FIX - Enable edit/split order permission on Expired/Failed/Collected status
7. EAT-608 SL-6825 ENHANCEMENT - Save Variant Image Selector when not Totally Uploaded
8. EAT-623 SL-6239 FIX - No allow using "." in postcode field when bulk import customer data
9. EAT-621 SL-4963 FEATURE - Product log for order edit
10. EAT-627 - Create Form -
11. EAT-609 SL-6565 FIX - Order Edit - member price shown when add product for order which owner_type is user
12. EAT-610 SL-6146 FIX - Invoice setting section permission
13. EAT-616 SL-6261 Enhancement - Product inventory reminder UI display
14. EAT-587 SL-1630 FEATURE - Add reminder to prevent merchants from changing order custom field name casually
15. EAT-571 SL5607 FEATURE - Update mobile number in member center:profile

v4.13.2 17/10/2019
-----------------
1. modify findFrameExistsAndClick function
2. remove should see alert when deleting customer
3. remove should see alert and add click popup confirm button of membership tier
4. add Mes tag
5. modify bottom location
6. modify the order of permission checkbox

v4.13.1 04/10/2019
-----------------
1. ECpay selector update
2. Add new mes category tags
3. Add order notify via order setting back
4. Update latest setup.feature
5. Membership tier would popup after swapping

v4.13.0 20/09/2019
-----------------
1. EAT-604 C9807 Turn off toggle button and reopen with LOGGED OUT FB. Select same FB page to connect.
2. EAT-605 C9808 Turn off toggle button and reopen with LOGGED OUT FB. Select DIFFERENT FB page to connect.
3. EAT-755 C14479 隱藏中間 search & filter 區塊
4. EAT-752 C14476 Disable rollout key + line@ connect, should not display line tab in message center
5. EAT-758 C14483 line 也能正常收到店家從 admin 發送的訊息 （包含圖片及文字訊息）
6. EAT-753 C14477 Enable rollout key + line@ connect, should display line tab in message center
7. EAT-751 C14475 Enable rollout key + line@ disconnect, should not display line tab in message center
8. EAT-757 C14482 line message 可以正確載入舊訊息
9. EAT-759 C14484 從 admin 發送 line@ 訊息，若為文字加圖片時，line 收到的訊息會分成兩則
10. EAT-754 C14478 Tab name show from left to right：Order & General message、Order Message、General Message、Line@ Message
11. EAT-788 C13646 When type some wrong data in line setup, should show error popup
12. EAT-789 C13647 If user have email, should merge into a same account
13. EAT-484 SL-5293 Shop - Layout v2 handle member price
14. EAT-624 SL-6912 FIX - when Membership Tier is deleted in broadcast Edit page
15. EAT-625 SL-6770 FIX - when Membership Tier is deleted in View page
16. EAT-631 SL-6353 FEATURE - MOLPAY CC api integration and order creation/error handling/message
17. EAT-635 SL-6252 FIX - Sort customer's comments by created time incrementally_layout v2
18. EAT-733 SL-8463 FIX - Cannot checkout because promotion crush if shop supporting language includes VN/JP/MY
19. EAT-734 SL-8547 HOTFIX - LINE login 登入如果沒有帶到email時要可以正常create user
20. EAT-747 SL-7023 3-layer Product Categories (Phase 1)

v4.12.2 19/09/2019
-----------------
1. mark ezship testcase
2. modify facebook fan page connect button name
3. modify Shop User Credit Page related scenario

v4.12.1 11/09/2019
-----------------
1. modify mes broadcast
2. modify import customer file

v4.12.0 23/08/2019
-----------------
1. EAT-570 SL-6013 FEATURE -Manual order can add unpublished items
2. EAT-572 SL-5465 FEATURE - show action log after manual order placed
3. EAT-428 Create new tag to avoid some account
4. EAT-462 SL-5682 FEATURE - Add last login info in customer detail
5. EAT-463 SL-5777 FEATURE - Broadcast email HTML - Template editor
6. EAT-473 SL-5646 API /SHOP- Checkout handle Bundle Pricing Apply
7. EAT-467 SL-4328 FEATURE - Shipping status show in admin order details (1)
8. EAT-481 SL-5323 Fix - Show the User Guide every time when add the element at the bottom in Advanced Page
9. EAT-495 SL-4600 FEATURE - Product Create or Update should be Blocked if didn't Type Custom Variation Title
10. EAT-486 SL-5713 FEATURE - Enable staff to view page if checkbox edit is marked in staff setting
11. EAT-498 SL-4734 FEATURE - SF plus delivery address revamp
12. EAT-501 SL-2497 FEATURE - 7-11/FMT/SF物流方式，配送狀態=待處理/處理中/可供出貨，可以編輯訂單詳情及拆單
13. EAT-489 SL-5834 FEATURE - Change Is Verified to F for Mobile/Quick/Facebook Signup (6)
14. add check new feature alert notification frame and click new feature alert close button step
15. add 5 HK new account in account-develop and 3 HK new account in account-productionInternal
16. modify report name and HK account id name
17. add NODE_OPTIONS="--max_old_space_size=4096" to protractor process in

v4.11.4 22/08/2019
-----------------
1. fix typo caused that could not parallel run

v4.11.3 22/08/2019
-----------------
1. update capability to 50
2. combine mes duplicated scenario
3. rm customer import preview log
4. mark some broken function scenario until fixed
5. add new account (previewtw1-52)

v4.11.2 01/08/2019
-----------------
1. new step declare clearing when filling file
2. update jenkins version & setup docker id
3. modify click catch error handling
4. update broadcast selectors
5. add new production-stag account and fix related link selector

v4.11.1 24/07/2019
-----------------
1. Fix alert
2. modify send immediately checkbox
3. move broadcast account to the end
4. modify shop logo
5. change express checkout page selector
6. modify member price wording
7. modify fillFileSelector function
8. modify FB latest view button
9. add @fixture-without-line-connecting and @fixture-without-order-sms-notify to account-productionInternal
10. modify bundle price edit dropdown
11. add rollback customer signup steps
12. rm fb page connected step
13. add testuser0049-0060 to account-productionInternal

v4.11.0 15/07/2019
-----------------
1. EAT-641 C10961 - $Filter by Money Spent / User Credit Balance / Birthday / Last Order Date / Last Login Date and successfully send, correct users receive message (SL-6267)
2. EAT-642 C11013 - FB Broadcast$Filter by several combinations, correct users receive message
3. EAT-646 C10957 - $Filter by Money Spent / User Credit Balance / Birthday / Last Order Date / Last Login Date and successfully send, correct users receive message (SL-6267)
4. EAT-647 C11012 - EMAIL Broadcast$Filter by several combinations, correct users receive message
5. EAT-651 C10962 - $Filter by Money Spent / User Credit Balance / Birthday / Last Order Date / Last Login Date and successfully send, correct users receive message (SL-6267)
6. EAT-652 C11011 - SMS Broadcast$Filter by several combinations, correct users receive message
7. EAT-661 C11712 - $Only users have LINE@ should be counted 
8. EAT-665 C11716 - LINE$Filter by Money Spent / User Credit Balance / Birthday / Last Order Date / Last Login Date and successfully send, correct users receive message
9. EAT-673 C9792 - Turn on toggle button, place order and update order status should receive SMS
10. EAT-674 C9793 - Check actual usage amount in admin order setting (only test in production)
11. EAT-682 C11722-$Enable rollout key, should access Channel Integration > LINE page
12. EAT-683 C11723-On LINE page, can see a section title "Connect with LINE@" and description content
13. EAT-684 LINE Setup & Login (for the store haven't connected with LINE)
14. EAT-685 Turn on/off the LINE order update notification toggle button and check
15. EAT-686 C11736-Change all order status in orders detail page and click send msg to notify customer
16. EAT-687 C11737-Change delivery status in orders detail page and click send msg to notify customer
17. EAT-688 C11738-Change payment status in orders detail page should not send message for customer
18. EAT-689 C11738-Change payment status in orders detail page should not send message for customer

v4.10.2 15/07/2019
-----------------
1. promotion hour rollout to internal
2. modify Customer List Page url
3. modify bundle promotion valid date
4. modify bulk import & addon/free shipping promotion date

v4.10.1 10/07/2019
-----------------
1. add capability setting w3c default equal false
2. view my shop hide into the navigation menu
3. update the elements on Store Credit Page
4. combine fb order notify scenarios
5. remove Product Bulk Import Update Log Page
6. modify the scenario assert for product price related 17th & 19th Product For Checkout

v4.10.0 26/06/2019
-----------------
1. EAT-622 C11713 - $Filter by Gender and successfully send, correct users receive message
2. EAT-663 C11714 - $Filter by is a member and successfully send, correct users receive message （SL-5504 之後 is member 會改成 Membership Status）
3. EAT-664 C11715 - $Filter by Membership Tier and successfully send, correct users receive message
4. EAT-667 C11718 - $Filter by several combinations, correct users receive message
5. EAT-670 C9789 - When rollout key is off & toggle is off, place order and update order status should not receive SMS
6. EAT-588 SL-6107 FEATURE - Should also block blacklist of payment/delivery in backend
7. EAT-633 Add assertion on import users
8. EAT-471 Add checkout scenario via mobile member
9. EAT-470 SL-5644 FEATURE - Bundle Pricing Promotion Phase 1
10. EAT-479 SL-5706 FEATURE - Detect to show re-invoice reminder (after order edit）
11. EAT-483 SL-6128 HOTFIX - Cart Crash if there’s a variation which was removed in cart
12. EAT-613 SL-6172 FIX - Inventory reminder should change after variation change
13. EAT-500 SL-5556 FEATURE - Invoice address revamp in checkout page
14. EAT-485 SL-6004 FEATURE - Add apply partial credit ON/OFF setting toggle
15. add @fixture-mobile-signup-p2 at shoplinetestshop1~10 and shoplinetestshop20~35

v4.9.7 26/06/2019
-----------------
1. modify save button in ExpressCheckoutBuilderPage & PageBuilderPage
2. add should see alert at addProductSettings.feature
3. modify price field
4. rm free delivery fee and modify delivery fee
5. modify phone number
6. modify getText contains \n

v4.9.6 17/06/2019
-----------------
1. add @fixture-shop to returnOrderSearch.feature
2. remove duplicated scenario
3. add basic plan tab
4. change to mobile sign up p2

v4.9.5 11/06/2019
-----------------
1. remove Is Email Verified in customer list page
2. modify inventory field selector

v4.9.4 29/05/2019
-----------------
1. modify order/payment/delivery status & Unfulfilled/Confirmed/Paid/Openelement on Orders Page
2. modify click tab step
3. modify custom field on OrdersShowPage
4. modify return order button
5. modify row of membership list
6. add Return Delivery Create Page

v4.9.3 23/05/2019
-----------------
1. modify product operation dropdown on Product Index Page
2. add resource to resources/account-productionInternal.js

v4.9.2 14/05/2019
-----------------
1. remove turning toggle when the scenario not check if member receive msg
2. add re-subscribe fb notify when the scenario check if member receive msg
3. add more waiting time for broadcast msg
2. update return delivery element selector
3. update facebook element selector

v4.9.1 30/04/2019
-----------------
1. modift orderAddmanualPermission to feature case
2. update CustomerListPage element selector
3. update PlaceReturnOrderPage element selector

v4.9.0 30/04/2019
-----------------
1. EAT-638 C10958 FB Broadcast$Scheduled message：click into `Cancel`, the status should change to Cancelled in list (SL-6298)
2. EAT-639 C10959 - $When the scheduled message is cancelled, click into 'Delete' to delete in list (SL-6298)
3. EAT-640 C10960 - FB Broadcast $Scheduled message cannot change to "Send Immediately" (SL-6298)
4. EAT-643 C10955 - $Scheduled message：click into `Cancel`, the status should change to Cancelled in list (SL-6298)
5. EAT-644 C10956 - EMAIL Broadcast$When the scheduled message is cancelled, click into 'Delete' to delete in list (SL-6298)
6. EAT-645 C10954 - EMAIL Broadcast $Scheduled message cannot change to "Send Immediately" (SL-6298)
7. EAT-648 C10963 -SMS $Scheduled message：click into `Cancel`, the status should change to Cancelled in list (SL-6298)
8. EAT-649 C10964 - SMS Broadcast$When the scheduled message is cancelled, click into 'Delete' to delete in list (SL-6298)
9. EAT-650 C10965 -SMS Broadcast $Scheduled message cannot change to "Send Immediately" (SL-6298)
10. EAT-653 C11704 - $Create LINE@ broadcast message
11. EAT-654 C11705 - $LINE@ Broadcast words count
12. EAT-655 C11706 - $Message Settings can set the message send time
13. EAT-656 C11707 - $Scheduled message: click into `Edit`, changing title, content, time, and filters, correct users should receive the most updated broadcast
14. EAT-657 C11708 - LINE@ Broadcast$Scheduled message：click into `Cancel`, the status should change to Cancelled in list
15. EAT-658 C11709 - LINE@ Broadcast$When the scheduled message is cancelled, click into 'Delete' to delete in list
16. EAT-659 C11710 - LINE@ Broadcast$Scheduled message cannot change to "Send Immediately"
17. EAT-660 C11711 - $Check if send immediately is pre-selected without doing any message setting
18. EAT-681 C11836 - When broadcast no select any filter, “send” button should be disable (canot sent broadcast successful)-FB
19. EAT-679 C11838 - When broadcast no select any filter, “send” button should be disable (canot sent broadcast successful) -SMS
20. EAT-680 C11839 - When broadcast no select any filter, “send” button should be disable (canot sent broadcast successful) -LINE@
21. EAT-668 C11719 - LINE@ Broadcast$Check status of all immediately messages should be "send", and the only button should be "view"
22. EAT-669 C9788 - When rollout key is off, admin should not show "Set order status update SMS notifications" in order setting
23. EAT-671 C9790 - When rollout key is on, admin should show "Set order status update SMS notifications" in order setting
24. EAT-672 C9791 - Turn on toggle button, able to see the SMS usage record table
25. EAT-678 C11837 - When broadcast no select any filter, “send” button should be disable (canot sent broadcast successful)-Email

v4.8.0 25/04/2019
-----------------
1. EAT-594 C9798 - Connect to 'Newly created FB page'
2. EAT-595 C9799 - Connect to existing FB page
3. EAT-597 C9801 - Check out order and subscribe FB notification at order confirmation page
4. EAT-598 C9802 - Check out order and subscribe FB notification at order checkout page
5. EAT-599 C9803 - Change order status in orders detail page and click send msg to notify customer
6. EAT-599 C9803 - Change order status in orders detail page and click send msg to notify customer
7. EAT-603 C9806 - Turn off toggle button and reopen with FB logined in browser. Select DIFFERENT FB page to connect.
8. EAT-606 C11282 - Change payment status in orders detail page should not send message for customer
9. EAT-607 C11283 - Change payment/delivery/order status should display latest status on msg
10. EAT-574 SL-5501 FEATURE - Add payment status "Refunding" for manual refund process
11. EAT-576 SL-3832 FEATURE - Product logs show revert fulfillment of variation with unlimited qty
12. EAT-577 SL-6352 EATURE - Admin能新增付款方式credit card
13. EAT-582 SL-6012 FEATURE - Storefront top right language selector revamp
14. EAT-465 SL-5630 FEATURE - Show toast & auto-login after Verification Complete (3)
15. EAT-469 SL-5286 FEATURE - Member Price Phase 1
16. EAT-468 SL-4332 FEATURE - Delivery status could change to shipping in membership page (4)
17. EAT-447 SL-5640 FEATURE - Add "Is Verified" column in Admin Customer List (1)
18. EAT-458 Create new checkout scenario via paypal
19. EAT-476 Check the normal product & subscription product adding to cart with add-on
20. EAT-476 Check the normal product & subscription product adding to cart with add-on
21. EAT-488 SL-5635 FEATURE - Prompt message when input same email in Sign In / Sign Up page (5)

v4.7.2 18/04/2019
-----------------
1. Return order default became empty
2. Broadcast default became 0

v4.7.1 11/04/2019
-----------------
1. The shop url not support using url to redirect page

v4.7.0 10/04/2019
-----------------
1. EAT-592 C9796 - Allow all permission and successfully reach "connect to facebook page" step
2. EAT-593 C9797 - Don't allow all permission and error will pop up to indicate what permission is still lacking and click to "go back" to permission page
3. EAT-596 C9800 - At "connect to facebook page" step, click log out of Facebook.
4. EAT-601 C9998 - Check merchant cannot turn off toggle button (only superadmin)
5. EAT-566 SL-6189 FEATURE - Admin - Member price shown before login toggle
6. EAT-567 SL-5979 FEATURE - Low inventory reminder shows before added to cart
7. EAT-568 SL-5604 FEATURE - Phones restructuring: Notification message in member center
8. EAT-575 SL-5016 FEATURE - Split order re-invoice setting toggle (1)
9. EAT-418 SL-4418 FEATURE Check upload image or gif status
10. EAT-421 SL-3789 FEATURE - add action log of FMT C2C when execute shipment
11. EAT-449 FEATURE SL-4684 Add Broadcast staff permissions
12. EAT-452 SL-4698 FEATURE - Apply x credits or not during checkout
13. EAT-453 SL-5443 FEATURE - Order Delivery Edit V2: UI revamp and COD order can change delivery option (3)
14. EAT-464 SL-5833 FEATURE - Change Login logic after verification
15. EAT-442 SL-5455 FEATURE - to add permission in staff setting
16. EAT-459 SL-5844 Message turn blank in admin Order/General Message if contains "<>"
17. EAT-503 SL-5751 FEATRURE - advanced page category products hide category name
18. EAT-492 SL-6310 FIX - Invoice checkout mobile/npc barcode input column fix
19. EAT-497 SL-5987 FEATURE - Add faq link of member price
20. EAT-502 SL-5532 FEATURE - Customer List - Order Count/ Total Spend should be the same logic
21. EAT-496 SL-5518 FEATURE - Display Breadcrumb in Search Result page
22. EAT-499 SL-4945 FEATURE - Product Subscription page add search - by已產生期數
23. EAT-540 SL-6457 Low inventory reminder shows before added to cart
24. EAT-565 FIX GA

v4.6.4 02/04/2019
-----------------
1. Update customer import file
2. Divide the feature running time is too long
3. Create new chrome capabilities setting

v4.6.3 27/03/2019
-----------------
1. Fix upgrade plan frame changed
2. Cart add on item scenario missing quantity

v4.6.2 27/03/2019
-----------------
1. Fix broadcast fitting advanced filter role

v4.6.1 19/03/2019
-----------------
1. Fix customer import revamp
2. Modify mobile signup account tags

v4.6.0 18/03/2019
-----------------
1. C9835 - Filter by Membership Tier and successfully send, correct users receive message(FB)
2. C9822 - Filter by Membership Tier and successfully send, correct users receive message(Email)
3. C9843 - Filter by Membership Tier and successfully send, correct users receive message(SMS)
4. C10555 - Check status of all immediately messages should be "send", and the only button should be "view" (email)
5. C10828 - Filter by different combinations, correct users receive message (sms)
6. C10823 - Only users have subscribed to Facebok notification should be counted(FB)
7. C10821 - Only users have `Email` should be counted
8. C10827 - Only users have `Member Mobile Number` or `Phone Numbers` should be counted (invalid no. is counted too, but cannot recceive the message)(sms)
9. C10828 - Filter by different combinations, correct users receive message (sms)
10. C10830 - Filter by different combinations, correct users receive message(fb)
11. C10829 - Filter by different combinations, correct users receive message (email)
12. C10557 - Check if send immediately is pre-selected without doing any message setting(SMS)
13. C9779 - When rollout key is on, admin should show "Order update notification via Facebook Messenger" in order setting
14. C9794 - Turn on "Order update notification via Facebook Messenger" in order setting without logging into FB in browser 
15. C9795 - Turn on "Order update notification via Facebook Messenger" in order setting after logging into FB in new browser tab
16. C9805 - Turn off toggle button and reopen with FB logined in browser. Select same FB page to connect. 

v4.5.3 13/03/2019
-----------------
1. Fix fb login selector changed
2. Fix customer import version updated

v4.5.2 04/03/2019
-----------------
1. Fix fb page connect without verification

v4.5.1 26/02/2019
-----------------
1. Fix beamer alert cover the page

v4.5.0 15/02/2019
-----------------
1. C9809 - When rollout key is off, sign up page should not show fb chat subscription plugin
2. C10076 - Message Setting can set the message send time (FB)
3. C10077 - Message Setting can set the message send time(EMAIL)
4. C10078 - Message Settings can set the message send time(SMS)
5. C9833 - Filter by Gender and successfully send, correct users receive message(FB)
6. C9820 - Filter by Gender and successfully send, correct users receive message(Email)
7. C9841 - Filter by Gender and successfully send, correct users receive message (SMS)
8. C9834 - Filter by is a member and successfully send, correct users receive message(FB)
9. C9821 - Filter by is a member and successfully send, correct users receive message（Email)
10. C9842 - Filter by is a member and successfully send, correct users receive message （SMS）
11. C9836 - Recvice FB Broadcast
12. C10549 - Check status of all immediately messages should be "send", and the only button should be "view"(fb)
13. C9817 - Create Email broadcast message
14. C9838 - Create sms broadcast message
15. C10552 - Check image / edit content / colour / size / style of text message can upload
16. C10077 - Message Setting can set the message send time(EMAIL)
17. C10078 - Message Settings can set the message send time(SMS)
18. C10824 - Scheduled message: click into `Edit`, changing title, content, time, and filters, correct users should receive the most updated broadcast(FB)
19. C10825 - Scheduled message: click into `Edit`, changing title, content, time, and filters, correct users should receive the most updated broadcast (email)
20. C10826 - Scheduled message: click into `Edit`, changing title, content, time, and filters, correct users should receive the most updated broadcast (sms)
21. C10820 - Can edit with html code and shows correctly (email)
22. C10822 - Email broadcast with html and user segment should be sent and received correctly

v4.4.2 21/02/2019
-----------------
1. Fix the broadcast and fb element
2. Fix message tab, included value is unavailable
3. Create a env for broadcast

v4.4.1 15/02/2019
-----------------
1. Fix all the plan are using plan
2. Fix member center page is duplicated
3. Fix the product list revamp

v4.4.0 25/01/2019
-----------------
1. C9813 - Rollout key: broadcast_center
2. C9815 - Ｎew Message - Facebook Messager、email、SMS option
3. C9814 - Merchant can view broadcast center index page
4. C10074 - Broadcast listing page
5. C10075 - Export Usage Record
6. C9810 - When rollout key is off, profile page in member center should not show fb chat subscription plugin
7. C9811 - When rollout key is on, sign up page should show fb chat subscription plugin, opt in to subscribe
8. C9812 - When rollout key is on, profile page in member center should show fb chat subscription plugin, opt in to subscribe
9. C9830 - Create FB broadcast message
10. C9831 - Broadcast content words limit (fb)
11. C9818 - Broadcast content words limit (email)
12. C10548 - Check if send immediately is pre-selected without doing any message setting (fb)
13. C10554 - Check if send immediately is pre-selected without doing any message setting (email)
14. SL-4355 Broadcast multi-filter customer list segment tier1
15. SL-3869 FEATURE - Customized variant selector display with Color/Image - Admin
16. SL-5367 FEATURE - Product subscription next billing /created subscription/status backend search
17. SL-4330 FEATURE - Change delivery status to shipping in order list (2)
18. SL-5345 Feature - Product subscription can pause and resume
19. SL- 5108 FEATURE--remove-bcc-of-mailer
20. SL-5599 FEATURE-add-on-items-to-search-index
21. MembershipTier Setting log check status
22. SL-5472 FEATURE - Oceanpayment orders should show correct info in order report-5

v4.3.1 16/01/2019
-----------------
1. Delete the element of editor of image
2. Update the address from SF

v4.3.0 26/12/2018
-----------------
1. SL-3241 FEATURE - Update promotion & free shipping selected products validation logic
2. FEATURE - setting google analytics tracking
3. SL-2590 FEATURE - add 7-11 c2c print label time
4. SL-2624 FEATURE - Add order split into product log (12)
5. SL-4819 FEATURE - usersimport-country-code
6. SL-3613 FEATURE - Shopping Cart Promotion Reminder - Free Shipping
7. SL-5071 FEATURE - UI for setting page
8. SL-4586 FEATURE - Disable Recommended Video after play (only youtube)
9. Navigation create practice
10. SL-4462 FEATURE - Membership Tier Settings Log
11. SL-2921 FEATURE- SF Express V2: Residential surcharge and Product Type setting
12. SL-2834 FEATURE - Bulk Update Payment/Delivery Setting
13. SL-5288 Admin - product edit page - add member price field
14. SL-4640 FEATURE - H1 & H2 tag
15. SL-5471 FEATURE - Admin Create Payment Oceampayment-1
16. SL-4326 FEATURE - Add delivery status: collected to enable logic for order split
17. SL-4707 FEATURE - Block merchant execute shipment: Rollout key and admin setting (1)
18. SL-5315 FEATURE - let merchant can decide delivery time setting is option or not
19. SL-5496 Admin - order edit page- Add product handle member price
20. SL-5702 mobile signup
21. SL-5068 Broadcast Preset Sending Time

v4.2.4 26/12/2018
-----------------
1. Update the language element on storefront
2. Modify error msg of stripe checkout

v4.2.3 17/12/2018
-----------------
1. Lower instance and add fixture-shop
2. Modify color dropdown and filter dropdown option

v4.2.2 14/12/2018
-----------------
1. update timeout
2. Modify scenario to avoid wrong data

v4.2.1 06/12/2018
-----------------
1. Divide feature into single scenario
2. Add quicktest tag for quick test
3. Modify scenario coz new invoice element

v4.2.0 30/11/2018
-----------------
1. Modify the element in ShopAdvancedPage.js

v4.1.0 27/11/2018
-----------------
1. Make auto e-invoice tag be independent and remove @fixture-whithout-invoice

v4.0.0 08/11/2018
-----------------
1. upgrade view.js using async/await

v3.9.0 08/11/2018
-----------------
1. SL-3800 FEATURE - Add pages to 301 redirect
2. SL-4625 FEATURE - As a merchant, I am able to send broadcast message via SMS
3. SL-4469 FIX - Update domain registration hint wordings
4. SL-4703 FEATURE - Show Coupon "Code" instead of "Coupon" tag in shopping cart
5. SL-4595 FIX - Add Product Setting in Staff Access Right
6. SL-4571 FEATURE - Subscription gift add delete Button
7. SL-4598 FEATURE - Open api permission for order/payment/delivery
8. SL-1158 FEATURE - Product publish time setting
9. SL-4467 FIX - Cart count check
10. SL-4518 Enhancement - Daily birthday credit jobs
11. SL-4454 FIX - Update admin add-on items index page copywriting
12. SL-4439 FEATURE- h1 tag at Advanced Page

v3.8.2 29/10/2018
-----------------
1. Update setupData.feature

v3.8.1 18/10/2018
-----------------
1. Modify the "customer namer" element in OrdersShowPage.js

v3.8.0 17/10/2018
-----------------
1. add shopbase url to env
2. modify feautre

v3.7.2 16/10/2018
-----------------
1. SF address data update

v3.7.1 16/10/2018
-----------------
1. Bulk assign product to category element updated

v3.7.0 09/10/2018
-----------------
1. Modify the element "row of mail list" in GoogleMailPage.js
2. Add a step "click on inbox button" to switch the page smoothly from Google Mail Page to another page
3. Modify the id of ExpressCheckoutPagesPage.js to let the page load completely

v3.6.2 02/10/2018
-----------------
1. Upgrade gmail using new layout
2. Remove all delete mail  steps

v3.6.1 21/09/2018
-----------------
1. Hotfix-apple pay error msg update
2. Revert the scenario step should not see

v3.6.0 19/09/2018
-----------------
1. SL-3887 FEATURE - Add feed tab on product form (move gtin/mpn/brand to this tab)(1)
2. SL-4554 FIX - Add FAQ link and change wording to product data info tab
3. SL-4149 FEATURE - Category Name Characters Limitation
4. SL-4135 FEATURE - Product subscription can setting gift by period UI
5. SL-3144 FEATURE - Edit SEO of the Featured (Show on homepage) category
6. SL-3757 Feature - Tcat refrigerated/frozen default delivery fee change
7. SL-3877 FIX - Check is missed if member change city in delivery address
8. SL-4173 Admin - Update Broadcast Section UI with new column and format for FB chat channel

v3.5.1 07/09/2018
-----------------
1. Hotfix for checkout agree terms default is unchecked, need to click checkbox

v3.5.0 29/08/2018
-----------------
1. Due to sso project, updated the element changed and scenario

v3.4.0 16/08/2018
-----------------
1. SL-3983 FEATURE - SHOP calender language
2. SL-3994 FEATURE - Allow merchant to hide storefront top right language selector
3. SL-4199 [4] FEATURE - Open api permission for product & order
4. SL-2941 FEATURE - HTML Lang attribute
5. SL-4161 FEATURE - Add Product Setting into Admin Setting
6. SL-4159 FEATURE - SMS usage table in order settings
7. SL-4162 FEATURE - Product Listing Sold Out UI - handle search result pages
8. SL-3491 FEATURE - Customer can signup and sign in via mobile number
9. SL-3086 FIX - search categories
10. SL-4158 FEATURE - Page Builder Video Widget Optimisation Youtube and/or Vimeo Autoplay and Loop
11. SL-4245 Fix - Shop - wrong msg when user change an existing email

v3.3.0 02/08/2018
-----------------
1. refactor .env and move folder

v3.2.1 23/07/2018
-----------------
1. add Paypal email scenario and element
2. modified text mail check and add waiting time

v3.2.0 17/07/2018
-----------------
1. add account for develop
2. remove fixture-tcat tag

v3.1.2 16/07/2018
-----------------
1. Hotfix - change payment display name
2. Change my_upload.xlsx

v3.1.1 12/07/2018
-----------------
1. Tcat checkout add city field dropdown
2. update currency label

v3.1.0 09/07/2018
-----------------
1. Scenario Revamp - using should see instead of waiting time

v3.0.2 09/07/2018
-----------------
1. Export dropdown element changed
2. Inventory remindar change to Product Setting Page

v3.0.1 03/07/2018
-----------------
1. Tcat rollout to all affect scenario

v3.0.0 29/06/2018
-----------------
1. C3788 - My Plan&Billing > upgrade HK
2. C8253/C8254 - Admin－Return Order
3. SL-3459 FEATURE - Google Pay checkout
4. C8245/C8246/C8247/C8248/C8249 - Admin－Inventory
5. C8250/C8251/C8252 - Admin－Order Filter

v2.9.3 29/06/2018
-----------------
1. Hotfix - add more e-invoice and tcat related account
2. Hotfix - update AcademyPage.js element
3. Hotfix - moidified scenario

v2.9.2 26/06/2018
-----------------
1. Hotfix - add an element to Delivery and Paymeny Create Page and related scenario

v2.9.1 16/06/2018
-----------------
1. C7179 - Bulk import/Export progress > page switch and download report
2. C8240/C8241/C8242 - Admin－Product
3. C8243/C8244 - Shop－Product
4. C3774/C3775 - fixed - Order edit delivery details for recipient information B2C & C2C
5. change folder name

v2.9.0 14/06/2018
-----------------
1. C3755 - Scenario: See Add-on items log
2. C7162- Check the Bulk ImportExport Progress List
3. C7196 - Check Show All Types, Order type, Customer type
4. C7171 - Check the All tab,Done tab,Failed tab
5. C4731 - message filters check
6. C4887 - add order custom item field in orders show page
7. C3774 - Order edit delivery details for recipient information (B2C)
8. C3775 - Order edit delivery details for recipient information (C2C)
9. C5222 - I want to edit devlivery details of a order and print tact label
10. C4282 - Checkout-Apple Pay (membership with free shipping)-HK
11. C3838 - Scenario: I want to success checkout product with decimal
12. C3836 - Scenario: I want to place order with Free Shipping via Stripe (hk$4)
13. SL3827 - HideSign-in-as-merchant
14. C7995 - Use unique password combination to sign up

v2.8.2 13/06/2018
-----------------
1. Hotfix - order show comment add confirm popup
2. Hotfix - promotion selector changed

v2.8.1 01/06/2018
-----------------
Hotfix - cart add remove popup

v2.8.0 01/06/2018
-----------------
1. C5160 - Create new express checkout page
2. C3880 - I want to import customers
3. C3850 - SF Order edit delivery detail
4. C3753 - Check product in admin and shop is correct
5. C4281 - I want to place order with Free Shipping when Total Order over Minimum items

v2.7.1 30/05/2018
-----------------
1. HotFix - toggle revamp and adjust C3764-12

v2.7.0 29/05/2018
-----------------
1. C4084 - shop checkout and check order message
2. C4572 - Scenario: create free gifts promotions except one delivery
3. C3807 - Scenario: Add instant add to cart product to cart
4. C4092 - Scenario: message between merchant and cusotmer
5. C4730 - Scenario: Checkout product and get free gifts by weight
6. C4727 - After create free gifts product and promotin, checkout product and get free gifts
7. C4729 - Checkout products and get free gifts
8. C4712 - Checkout product and get free gifts
9. C4726 - After create free gifts product and promotin, checkout product freeshippng and get free gifts

v2.6.0 22/05/2018
-----------------
1. C7219 - Add date filter and status filter
2. C4886 - Can add other product in order details
3. C4884 - Can edit product details of an order
4. C4885 - Change product quantity in orders show page
5. C4888 - add discount in orders show page
6. C3820 - Checkout - Free Checkout
7. Remark Fb login scenario

v2.5.1 21/05/2018
-----------------
1. Hotfix - addon item page revamp
2. Add e-invoice fixture tags

v2.5.0 14/05/2018
-----------------
1. C4371 - Choose options to export Customize order report
2. C4122 - Customize export order report
3. C3766 - Can search orders by input different string in order search bar
4. C5221 - Tcat orders show page print report
5. C3837 - AsiaPay Checkout
6. C3776 - E-invoice for checkout
7. C3777 - E-invoice for checkout
8. C3859 - Express shop and checkout page
9. C3793 - Authorize the Shopline website and login by my Facebook
10. C3806 - Assign product to two kind of categorie and switch different category in shop
11. Fix - 711/FMT phone field and language translation revamp

v2.4.1 10/05/2018
-----------------
1. Hotfix - search field and hide price toggle revamp

v2.4.0 07/05/2018
-----------------
1. C5162 - Tcat Delivery Assertion
2. C5163 - Tcat Delivery Create Feature
3. C5220 - Switch to multiple Tcat order managemant
4. C5224 - Execute shipment of Tcat
5. C3829 - Checkout with coupon Selected Products over Minimum Amount
6. C3865 - Checkout with delivery by weight and coupon code
7. C3819 - Checkout - Fit limitation with Ecpay (711B2C)
         - Checkout - Fit limitation with Ecpay (FamilyMart)
8. C3818 - Checkout - Not fit limitation with Ecpay (711B2C)
         - Checkout - Not fit limitation with Ecpay (FamilyMart)
9. C3822 - Promotion when Total Order Over Minimum Amount
10. C3827 - Checkout different categories with promotion

v2.3.0 02/05/2018
-----------------
1. C3852 - Express checkout page add image
2. C3761 - Message Center Page
3. C3771 - Order edit for customer details
4. C3825 - 711 Get discount on Entire Order with purchase over items
5. C3824 - Custom Get discount on Entire Order with purchase over items alert
6. C3823 - Custom Get discount on Entire Order with purchase over items
7. C3826 - Ezship Get discount on Entire Order with purchase over items
8. C3821 - Checkout with promotion for all of shop
9. C3857 - Create new express checkout page and checkout
10. C3855 - Express checkout index page button operation
11. C3858 - Send message to merchant on express checkout pages when product without price

v2.2.0 25/04/2018
-----------------
1. C3839 - Checkout - SF
2. C4555 - Create free gifts product
3. C4556 - Create free gifts product and test operating
4. C3846 - Checkout Preorder Product
5. C3847 - Promotion and freeshipping for Members only
6. C3849 - Block blacklist customer from checkout
7. C3876 - Limitation Credits Checkout
8. C3877 - Percent Credits Checkout
9. C3878 - Auto Credits Checkout With Family Mart
10. C3856 - Express Checkout Page
11. C4845 - Check the status of the order detail page
12. C3808 - Get correct product

v2.1.0 20/04/2018
-----------------
1. C3770 - Order Edit Can edit custom details of an order
2. C3786 - Shop Settings Payment Options
3. C3787 - Products and Categories>Products
4. C4291 - Products price hide product creation
5. C4080 - Return Orders Return Orders search
6. C3767 - Return Orders Switch to multiple status tab
7. C3815 - Checkout Not fit limitation with 7-11 (B2C)
8. C3814 - Checkout Fit limitation with 7-11 (B2C)
9. C3862 - 711 B2C Multiple Products Checkout
10. C3861 - 711 B2C Single Product Checkout
11. C3860 - Delivery by weight and different shipping zone
12. C3864 - Checkout with delivery by weight via Ezship
13. C3863 - Family Mart B2C checkout with Addon
14. C3833 - Free Shipping when Total Order Over Minimum Amount co-exist
15. C3828 - Free Shipping when Total Order Over Minimum Amount
16. C3848 - VVIP Membership Tier Checkout

v2.0.1 17/04/2018
-----------------
1. Hotfix - 711 map ui changed

v2.0.0 12/04/2018
-----------------
1. C3805 - Save selected 711 store when checkout
2. C3804 - Fill information in checkout page
3. C3767 - Go to Return Order Show Page
4. C3768 - Update the return orders in Return Order Show Page
5. C3772 - Order edit delivery details for local delivery order
6. C3773 - Can not edit delivery details of a ezship order
8. C3785 - Shop Settings>Delivery Options
9. C3835 - Unqualified Stripe Checkout
10. C3840 - Free Checkout
11. C3834 - Free Shipping when Total Order Over Minimum items co-exist
12. Update locate to ensure that element can be visible

v1.9.4 30/03/2018
-----------------
1. Fix SL-2776  revamp
2. Update account tags

v1.9.3 29/03/2018
-----------------
1. Change the notificationEmail on staging.js to shoplineqa
2. Enhance maxInstances to 50 and ensure it's stable on prodstaging
3. Divide order status bulk update feature

v1.9.2 22/03/2018
-----------------
1. Fix count dropdown ui changed

v1.9.1 21/03/2018
-----------------
1. Update account tags
2. Fix side menu ui changed

v1.9.0 20/03/2018
-----------------
1. C3764 - Bulk change Orders
2. C3800 - Can remove product on shop cart page
3. C3801 - Can show correct delivery method by different country
4. C3802 - Auto scroll to no typing field
5. C3803 - Can show correct information when click same as checkbox

v1.8.1 08/03/2018
-----------------
1. Update the fix redirected page when created addon item

v1.8.0 22/02/2018
-----------------
1. C3763 - Orders show page
2. C3867 - Store credits>Manual assign store credit
3. C3869 - Store credits>Welcome credits>admin/shop/Email
4. C3868 - Store credits>Welcome credits settings
5. C3870 - Store Credit Setting Update
6. C3782 - My Plan And Billing
7. C3789 - Menu
8. C3790 - Search product on header bar
9. C3791 - Sign in
10. C3792 - Sign up
11. C3794 - Remove Product In Cart Panel
12. C3796 - Switch language
13. C3797 - Switch Currency
14. C3798 - Search product on side panel
15. C3809 - Limitation Addon Checkout
16. C3830 - Free Shipping No Condition
17. C3783 - My Plan Checkout
18. C3831 - Free Shipping when Total Order Over Minimum Amount
19. C3832 - Free Shipping when Total Order Over Minimum items
20. C3843 - Checkout>familymart B2C-pickup and pay
21. C3844 - Checkout multiple products with exclusive payment and delivery option
22. C3845 - Checkout with Addon
23. C3873 - Assign credits and checkout with add-on
24. C3874 - Assign credits and checkout with member promotion
25. C3851 - Create new express checkout page
26. C3810 - Checkout with unlimitation addon item
27. C3799 - Checkout with large quantity
28. Update deployment, develop and productionStaging environment
29. change method to genMail
30. add step to hover over element
31. add function store use variable
32. Update setupData feature to fit basecase
33. change instant to 16 to keep stable

v1.7.0 31/01/2018
-----------------
1. AccountManager becomes ResourceManager
2. add deployment environment that only used for testing deployment
3. split paymentCreate into multiple feature file so that it won't block the run time of tests
4. update account distribution for environment
5. loop script for looping a certain scenario
6. using docker-compose to setup hub server
7. hub server will also provide jenkins
8. shell script for createing fixtures account in jenkins(making use of loop.sh and other component)
9. config for new server

v1.6.2 24/01/2018
---------------
1. Fix shop to point to productionStaging
2. Fix shop checkout agree term checbox be default

v1.6.1 19/01/2018
---------------
1. update test server endpoint

v1.6.0 19/01/2018
---------------
1. Refactor account manager to divide diff account with diif database.
2. Refactor scenario to decrease repeated step
3. ShopCheckout - limitationCheckout（C3813)

v1.5.3(hotfix) 15/01/2018
---------------
1. Fix selector changed on order show page.

v1.5.2(hotfix) 12/01/2018
---------------
1. Fix selector changed on dashboard page.

v1.5.1(hotfix) 05/01/2018
---------------
1. Fix selector changed on add-on items creating page.

v1.5.0 28/12/2017
---------------
1. ShopCheckout - limitationCheckout（C3811, C3812）

v1.4.2 22/12/2017
---------------
1. FreeShipping - freeShippingCreate.feature（C3872-1, C3872-2, C3872-3）

v1.4.1(hotfix) 21/12/2017
---------------
1. Admin on-boarding released. Update relative scenario and create page for on-boarding flow.

v1.4 14/12/2017
---------------
1. Add-on Items - addonCreate（C3754）
2. Add-on Items - addonUpdate（C3754）
3. Inventory - inventoryBulkUpdate (C3758)
4. Inventory - inventoryUpdate (C3759)
5. Promotions - promotionCreate (C3871）

v1.3.1(hotfix) 08/12/2017
-----------------
1. Admin Panel Sidemenu revamp. Updated pages and related selectors

v1.3.0 23/11/2017
-----------------

1. deleted script and new test.sh - run.sh and docker-run.sh. reason: Should only have 1 script to start test to avoid confusion.
2. test.sh use docker container to start testing. reason: seems we will use the selenium in the docker for most of the cases. as Image assert requires docker container to handle file path problem.
3. config/server is changed - the file now act like config/client. we can choose which selenium to use. config/env/ won't take the control anymore
4. removed dev-node container - seems no more use case for it.
5. added test-node container - it construct the node env and run test as default
6. test.sh will dry-run before doing the real testing
7. ProductCreatePage - productUpdate  (C3751-1, C3751-2, C3751-3, C3751-4, C3751-5)
8. ProductCreatePage - productSearch (C3750-1, C3750-2)
9. ProductCreatePage - productCreate with weight (C3752-1, C3752-2)
10. ProductCreatePage - productBulkUpdate (C3749-1, C3749-2, C3749-3, C3749-4)
11. CategoryPage - Assign product to two diff categories (C3999)

v1.2.1 16/11/2017
-----------------
1. increase timeout for locating element (from 10000 -> 15000)
2. update the way to hack those hidden image input fields
3. CategoryPage - CategoryList - categoryCreate (C3756)
4. CategoryPage - CategoryList - categoryUpdate (C3757-2, C3757-3, C3757-4)
5. DeliverySettingPage - DashboardPage - SideMenu (C3756)
6. DeliverySettingPage - DeliveryCreate - deliveryAssert (C3889-1, C3889-2, C3889-3, C3889-4, C3735-1, C3735-2, C3735-3)
7. ProductCreatePage - productCreate (C3748-1, C3748-2, C3748-3, C3748-4, C3748-5)


v1.2 9/11/2017
--------------
1. It can now compare images
2. due the sources of images are different in a docker container and the host that start the commands, we need a need script to start test
3. a new script to start test, docker-run, it will build a node env, and start a container to call 'run' script. A bit hacky. Of course it will also do the house keeping like deleting old images and remove the node container
4. only productionStaging, productionInternal and develop are avalibale now
5. Brand Page - Favicon Update (C3979)
6. Brand Page - logoUpdate (C3978)
7. Delivery Setting - DeliveryCreate(C3732-1, C3732-2, C3732-3)
8. test node needs some image processing lib
9. server restart is required for every build from now on

v1.1 2/11/2017
--------------

local selenium can only run 5 instances. the default setting is changed.

1. Shop Settings - Delivery and Payment Options (C3733)
2. Header bar and shop basic settings (C3726)
3. Shop Settings - Order Settings (C3740、C3741、C3742、C3743)

v1.0 30/10/2017
---------------

First launch, start parallel test with manual testing.
Basically the framework is now with account management, docker-compose, tools and some easy scripts.

2017/10/29

1. Sign up/Sign in（C3841、C3842）
2. Header bar and shop basic settings （C3725、C3726、C3727、C3728、C3729）
3. Shop Settings - Delivery and Payment Options（C3886、C3731、C3737、C3890、C3739）

2017/10/30

1. HotFix - Fix Analytics Element On Side Menu

2017/10/4
1. move scripts to core framework
2. update all commands. now using npm run xxx instead of bash scripts/xxx

2017/9/21
1. removed Grunt.
2. added script to start test
3. add structure Transformer

2017/9/21
1. add Gruntfile. will use grunt for starting test

2016/8/20
1. Alpha phase. basic framework structure.


