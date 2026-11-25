/*
  FoodNop / Saywee - Localization, Currency & Store defaults patch
  Generated: 2026-11-25 21:21:29
  Safe to re-run (idempotent).
  Resolves languages by culture code (vi-VN / en-US).
  Footer Menu/MenuItem EntityIds assume standard nopCommerce 4.90 seed;
  Category EntityIds 17-156 match FoodNop catalog.
*/
SET NOCOUNT ON;
SET XACT_ABORT ON;
BEGIN TRAN;

DECLARE @Vi INT = (SELECT TOP 1 Id FROM [Language] WHERE LanguageCulture = N'vi-VN' OR UniqueSeoCode = N'vi' ORDER BY Id);
DECLARE @En INT = (SELECT TOP 1 Id FROM [Language] WHERE LanguageCulture = N'en-US' OR UniqueSeoCode = N'en' ORDER BY Id);
IF @Vi IS NULL THROW 50001, 'Vietnamese language (vi-VN) not found.', 1;
IF @En IS NULL SET @En = 1;

/* ========== 1) LocalizedProperty (Menu / MenuItem / Topic / Category VI) ========== */
IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=17 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (17, @Vi, N'Category', N'Name', N'Trái cây');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Trái cây' WHERE LanguageId=@Vi AND EntityId=17 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=18 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (18, @Vi, N'Category', N'Name', N'Trái hạch');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Trái hạch' WHERE LanguageId=@Vi AND EntityId=18 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=19 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (19, @Vi, N'Category', N'Name', N'Táo');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Táo' WHERE LanguageId=@Vi AND EntityId=19 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=20 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (20, @Vi, N'Category', N'Name', N'Lê');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Lê' WHERE LanguageId=@Vi AND EntityId=20 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=21 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (21, @Vi, N'Category', N'Name', N'Dưa');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Dưa' WHERE LanguageId=@Vi AND EntityId=21 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=22 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (22, @Vi, N'Category', N'Name', N'Nho');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Nho' WHERE LanguageId=@Vi AND EntityId=22 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=23 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (23, @Vi, N'Category', N'Name', N'Chà là');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Chà là' WHERE LanguageId=@Vi AND EntityId=23 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=24 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (24, @Vi, N'Category', N'Name', N'Quả mọng');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Quả mọng' WHERE LanguageId=@Vi AND EntityId=24 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=25 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (25, @Vi, N'Category', N'Name', N'Cam quýt');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Cam quýt' WHERE LanguageId=@Vi AND EntityId=25 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=26 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (26, @Vi, N'Category', N'Name', N'Hồng');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Hồng' WHERE LanguageId=@Vi AND EntityId=26 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=27 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (27, @Vi, N'Category', N'Name', N'Nhiệt đới');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Nhiệt đới' WHERE LanguageId=@Vi AND EntityId=27 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=28 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (28, @Vi, N'Category', N'Name', N'Trái cây khác');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Trái cây khác' WHERE LanguageId=@Vi AND EntityId=28 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=29 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (29, @Vi, N'Category', N'Name', N'Rau củ');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Rau củ' WHERE LanguageId=@Vi AND EntityId=29 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=30 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (30, @Vi, N'Category', N'Name', N'Rau củ hữu cơ');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Rau củ hữu cơ' WHERE LanguageId=@Vi AND EntityId=30 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=31 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (31, @Vi, N'Category', N'Name', N'Rau lá');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Rau lá' WHERE LanguageId=@Vi AND EntityId=31 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=32 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (32, @Vi, N'Category', N'Name', N'Rau củ rễ');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Rau củ rễ' WHERE LanguageId=@Vi AND EntityId=32 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=33 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (33, @Vi, N'Category', N'Name', N'Hành & Hành tím');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Hành & Hành tím' WHERE LanguageId=@Vi AND EntityId=33 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=34 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (34, @Vi, N'Category', N'Name', N'Cà chua');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Cà chua' WHERE LanguageId=@Vi AND EntityId=34 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=35 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (35, @Vi, N'Category', N'Name', N'Nấm');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Nấm' WHERE LanguageId=@Vi AND EntityId=35 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=36 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (36, @Vi, N'Category', N'Name', N'Khoai & Khoai mỡ');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Khoai & Khoai mỡ' WHERE LanguageId=@Vi AND EntityId=36 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=37 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (37, @Vi, N'Category', N'Name', N'Dưa chuột');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Dưa chuột' WHERE LanguageId=@Vi AND EntityId=37 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=38 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (38, @Vi, N'Category', N'Name', N'Bí & Bí ngòi');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bí & Bí ngòi' WHERE LanguageId=@Vi AND EntityId=38 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=39 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (39, @Vi, N'Category', N'Name', N'Ngô');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Ngô' WHERE LanguageId=@Vi AND EntityId=39 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=40 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (40, @Vi, N'Category', N'Name', N'Rau thơm');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Rau thơm' WHERE LanguageId=@Vi AND EntityId=40 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=41 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (41, @Vi, N'Category', N'Name', N'Ớt');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Ớt' WHERE LanguageId=@Vi AND EntityId=41 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=42 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (42, @Vi, N'Category', N'Name', N'Đậu & Đậu Hà Lan');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đậu & Đậu Hà Lan' WHERE LanguageId=@Vi AND EntityId=42 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=43 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (43, @Vi, N'Category', N'Name', N'Rau salad');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Rau salad' WHERE LanguageId=@Vi AND EntityId=43 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=44 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (44, @Vi, N'Category', N'Name', N'Rau củ khác');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Rau củ khác' WHERE LanguageId=@Vi AND EntityId=44 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=45 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (45, @Vi, N'Category', N'Name', N'Thịt');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thịt' WHERE LanguageId=@Vi AND EntityId=45 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=46 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (46, @Vi, N'Category', N'Name', N'Thịt bò');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thịt bò' WHERE LanguageId=@Vi AND EntityId=46 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=47 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (47, @Vi, N'Category', N'Name', N'Thịt gia cầm');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thịt gia cầm' WHERE LanguageId=@Vi AND EntityId=47 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=48 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (48, @Vi, N'Category', N'Name', N'Thịt heo');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thịt heo' WHERE LanguageId=@Vi AND EntityId=48 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=49 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (49, @Vi, N'Category', N'Name', N'Thịt cừu');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thịt cừu' WHERE LanguageId=@Vi AND EntityId=49 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=50 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (50, @Vi, N'Category', N'Name', N'Thịt nguội');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thịt nguội' WHERE LanguageId=@Vi AND EntityId=50 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=51 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (51, @Vi, N'Category', N'Name', N'Thịt ướp');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thịt ướp' WHERE LanguageId=@Vi AND EntityId=51 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=52 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (52, @Vi, N'Category', N'Name', N'Hải sản');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Hải sản' WHERE LanguageId=@Vi AND EntityId=52 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=53 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (53, @Vi, N'Category', N'Name', N'Tôm');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Tôm' WHERE LanguageId=@Vi AND EntityId=53 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=54 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (54, @Vi, N'Category', N'Name', N'Nhuyễn thể');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Nhuyễn thể' WHERE LanguageId=@Vi AND EntityId=54 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=55 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (55, @Vi, N'Category', N'Name', N'Cá nguyên con');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Cá nguyên con' WHERE LanguageId=@Vi AND EntityId=55 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=56 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (56, @Vi, N'Category', N'Name', N'Phi lê & Cá cắt khúc');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Phi lê & Cá cắt khúc' WHERE LanguageId=@Vi AND EntityId=56 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=57 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (57, @Vi, N'Category', N'Name', N'Hải sản khác');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Hải sản khác' WHERE LanguageId=@Vi AND EntityId=57 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=58 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (58, @Vi, N'Category', N'Name', N'Đông lạnh');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đông lạnh' WHERE LanguageId=@Vi AND EntityId=58 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=59 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (59, @Vi, N'Category', N'Name', N'Khai vị & Đồ ăn nhẹ');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Khai vị & Đồ ăn nhẹ' WHERE LanguageId=@Vi AND EntityId=59 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=60 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (60, @Vi, N'Category', N'Name', N'Há cảo');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Há cảo' WHERE LanguageId=@Vi AND EntityId=60 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=61 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (61, @Vi, N'Category', N'Name', N'Bánh bao');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bánh bao' WHERE LanguageId=@Vi AND EntityId=61 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=62 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (62, @Vi, N'Category', N'Name', N'Bánh pancake');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bánh pancake' WHERE LanguageId=@Vi AND EntityId=62 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=63 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (63, @Vi, N'Category', N'Name', N'Hải sản & Cá viên');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Hải sản & Cá viên' WHERE LanguageId=@Vi AND EntityId=63 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=64 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (64, @Vi, N'Category', N'Name', N'Xúc xích & Thịt viên');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Xúc xích & Thịt viên' WHERE LanguageId=@Vi AND EntityId=64 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=65 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (65, @Vi, N'Category', N'Name', N'Món chính');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Món chính' WHERE LanguageId=@Vi AND EntityId=65 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=66 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (66, @Vi, N'Category', N'Name', N'Bánh mì & Tráng miệng');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bánh mì & Tráng miệng' WHERE LanguageId=@Vi AND EntityId=66 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=67 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (67, @Vi, N'Category', N'Name', N'Kem');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Kem' WHERE LanguageId=@Vi AND EntityId=67 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=68 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (68, @Vi, N'Category', N'Name', N'Trái cây đông lạnh');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Trái cây đông lạnh' WHERE LanguageId=@Vi AND EntityId=68 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=69 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (69, @Vi, N'Category', N'Name', N'Rau củ đông lạnh / Khai vị');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Rau củ đông lạnh / Khai vị' WHERE LanguageId=@Vi AND EntityId=69 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=70 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (70, @Vi, N'Category', N'Name', N'Bánh trung thu');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bánh trung thu' WHERE LanguageId=@Vi AND EntityId=70 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=71 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (71, @Vi, N'Category', N'Name', N'Thực phẩm tức thì');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thực phẩm tức thì' WHERE LanguageId=@Vi AND EntityId=71 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=72 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (72, @Vi, N'Category', N'Name', N'Mì ăn liền');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Mì ăn liền' WHERE LanguageId=@Vi AND EntityId=72 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=73 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (73, @Vi, N'Category', N'Name', N'Mì Hàn Quốc');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Mì Hàn Quốc' WHERE LanguageId=@Vi AND EntityId=73 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=74 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (74, @Vi, N'Category', N'Name', N'Mì Nhật Bản');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Mì Nhật Bản' WHERE LanguageId=@Vi AND EntityId=74 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=75 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (75, @Vi, N'Category', N'Name', N'Lẩu & Món ăn liền');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Lẩu & Món ăn liền' WHERE LanguageId=@Vi AND EntityId=75 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=76 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (76, @Vi, N'Category', N'Name', N'Cơm ăn liền');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Cơm ăn liền' WHERE LanguageId=@Vi AND EntityId=76 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=77 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (77, @Vi, N'Category', N'Name', N'Đồ ăn sẵn');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đồ ăn sẵn' WHERE LanguageId=@Vi AND EntityId=77 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=78 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (78, @Vi, N'Category', N'Name', N'Cháo & Súp');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Cháo & Súp' WHERE LanguageId=@Vi AND EntityId=78 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=79 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (79, @Vi, N'Category', N'Name', N'Thực phẩm sáng');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thực phẩm sáng' WHERE LanguageId=@Vi AND EntityId=79 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=80 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (80, @Vi, N'Category', N'Name', N'Bột pha');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bột pha' WHERE LanguageId=@Vi AND EntityId=80 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=81 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (81, @Vi, N'Category', N'Name', N'Cà ri');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Cà ri' WHERE LanguageId=@Vi AND EntityId=81 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=82 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (82, @Vi, N'Category', N'Name', N'Sương sáo');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Sương sáo' WHERE LanguageId=@Vi AND EntityId=82 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=83 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (83, @Vi, N'Category', N'Name', N'Tiệm bánh');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Tiệm bánh' WHERE LanguageId=@Vi AND EntityId=83 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=84 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (84, @Vi, N'Category', N'Name', N'Làm mới');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Làm mới' WHERE LanguageId=@Vi AND EntityId=84 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=85 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (85, @Vi, N'Category', N'Name', N'Bánh kem');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bánh kem' WHERE LanguageId=@Vi AND EntityId=85 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=86 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (86, @Vi, N'Category', N'Name', N'Bánh quy');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bánh quy' WHERE LanguageId=@Vi AND EntityId=86 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=87 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (87, @Vi, N'Category', N'Name', N'Bánh mì');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bánh mì' WHERE LanguageId=@Vi AND EntityId=87 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=88 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (88, @Vi, N'Category', N'Name', N'Tráng miệng & Bánh ngọt');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Tráng miệng & Bánh ngọt' WHERE LanguageId=@Vi AND EntityId=88 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=89 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (89, @Vi, N'Category', N'Name', N'Bánh tortilla');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bánh tortilla' WHERE LanguageId=@Vi AND EntityId=89 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=90 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (90, @Vi, N'Category', N'Name', N'Bánh trung thu');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bánh trung thu' WHERE LanguageId=@Vi AND EntityId=90 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=91 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (91, @Vi, N'Category', N'Name', N'Đồ ăn vặt');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đồ ăn vặt' WHERE LanguageId=@Vi AND EntityId=91 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=92 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (92, @Vi, N'Category', N'Name', N'Kẹo');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Kẹo' WHERE LanguageId=@Vi AND EntityId=92 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=93 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (93, @Vi, N'Category', N'Name', N'Khoai tây chiên');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Khoai tây chiên' WHERE LanguageId=@Vi AND EntityId=93 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=94 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (94, @Vi, N'Category', N'Name', N'Bánh cracker & Cookies');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bánh cracker & Cookies' WHERE LanguageId=@Vi AND EntityId=94 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=95 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (95, @Vi, N'Category', N'Name', N'Hạt & Hạt giống');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Hạt & Hạt giống' WHERE LanguageId=@Vi AND EntityId=95 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=96 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (96, @Vi, N'Category', N'Name', N'Rong biển');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Rong biển' WHERE LanguageId=@Vi AND EntityId=96 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=97 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (97, @Vi, N'Category', N'Name', N'Tàu hũ ky');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Tàu hũ ky' WHERE LanguageId=@Vi AND EntityId=97 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=98 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (98, @Vi, N'Category', N'Name', N'Khô bò / Thịt khô');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Khô bò / Thịt khô' WHERE LanguageId=@Vi AND EntityId=98 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=99 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (99, @Vi, N'Category', N'Name', N'Hải sản khô');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Hải sản khô' WHERE LanguageId=@Vi AND EntityId=99 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=100 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (100, @Vi, N'Category', N'Name', N'Trái cây khô');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Trái cây khô' WHERE LanguageId=@Vi AND EntityId=100 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=101 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (101, @Vi, N'Category', N'Name', N'Bắp rang');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bắp rang' WHERE LanguageId=@Vi AND EntityId=101 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=102 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (102, @Vi, N'Category', N'Name', N'Chả giò');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Chả giò' WHERE LanguageId=@Vi AND EntityId=102 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=103 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (103, @Vi, N'Category', N'Name', N'Đồ ăn vặt mặn');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đồ ăn vặt mặn' WHERE LanguageId=@Vi AND EntityId=103 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=104 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (104, @Vi, N'Category', N'Name', N'Bánh kẹo Ấn Độ');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bánh kẹo Ấn Độ' WHERE LanguageId=@Vi AND EntityId=104 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=105 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (105, @Vi, N'Category', N'Name', N'Đồ ăn vặt lành mạnh');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đồ ăn vặt lành mạnh' WHERE LanguageId=@Vi AND EntityId=105 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=106 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (106, @Vi, N'Category', N'Name', N'Đồ uống');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đồ uống' WHERE LanguageId=@Vi AND EntityId=106 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=107 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (107, @Vi, N'Category', N'Name', N'Trà');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Trà' WHERE LanguageId=@Vi AND EntityId=107 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=108 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (108, @Vi, N'Category', N'Name', N'Nước ngọt');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Nước ngọt' WHERE LanguageId=@Vi AND EntityId=108 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=109 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (109, @Vi, N'Category', N'Name', N'Nước trái cây');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Nước trái cây' WHERE LanguageId=@Vi AND EntityId=109 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=110 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (110, @Vi, N'Category', N'Name', N'Đồ uống sữa');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đồ uống sữa' WHERE LanguageId=@Vi AND EntityId=110 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=111 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (111, @Vi, N'Category', N'Name', N'Nước gạo & Đậu nành');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Nước gạo & Đậu nành' WHERE LanguageId=@Vi AND EntityId=111 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=112 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (112, @Vi, N'Category', N'Name', N'Cà phê');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Cà phê' WHERE LanguageId=@Vi AND EntityId=112 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=113 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (113, @Vi, N'Category', N'Name', N'Nước thể thao');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Nước thể thao' WHERE LanguageId=@Vi AND EntityId=113 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=114 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (114, @Vi, N'Category', N'Name', N'Khác');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Khác' WHERE LanguageId=@Vi AND EntityId=114 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=115 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (115, @Vi, N'Category', N'Name', N'Sữa & Trứng');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Sữa & Trứng' WHERE LanguageId=@Vi AND EntityId=115 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=116 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (116, @Vi, N'Category', N'Name', N'Sữa & Kem');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Sữa & Kem' WHERE LanguageId=@Vi AND EntityId=116 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=117 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (117, @Vi, N'Category', N'Name', N'Trứng');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Trứng' WHERE LanguageId=@Vi AND EntityId=117 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=118 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (118, @Vi, N'Category', N'Name', N'Sữa chua');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Sữa chua' WHERE LanguageId=@Vi AND EntityId=118 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=119 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (119, @Vi, N'Category', N'Name', N'Bơ');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bơ' WHERE LanguageId=@Vi AND EntityId=119 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=120 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (120, @Vi, N'Category', N'Name', N'Phô mai');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Phô mai' WHERE LanguageId=@Vi AND EntityId=120 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=121 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (121, @Vi, N'Category', N'Name', N'Đậu phụ & Thuần chay');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đậu phụ & Thuần chay' WHERE LanguageId=@Vi AND EntityId=121 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=122 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (122, @Vi, N'Category', N'Name', N'Đậu phụ');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đậu phụ' WHERE LanguageId=@Vi AND EntityId=122 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=123 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (123, @Vi, N'Category', N'Name', N'Tàu hũ');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Tàu hũ' WHERE LanguageId=@Vi AND EntityId=123 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=124 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (124, @Vi, N'Category', N'Name', N'Miso');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Miso' WHERE LanguageId=@Vi AND EntityId=124 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=125 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (125, @Vi, N'Category', N'Name', N'Mì & Bánh cuốn');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Mì & Bánh cuốn' WHERE LanguageId=@Vi AND EntityId=125 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=126 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (126, @Vi, N'Category', N'Name', N'Đông lạnh thực vật');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đông lạnh thực vật' WHERE LanguageId=@Vi AND EntityId=126 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=127 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (127, @Vi, N'Category', N'Name', N'Đông lạnh thực vật');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đông lạnh thực vật' WHERE LanguageId=@Vi AND EntityId=127 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=128 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (128, @Vi, N'Category', N'Name', N'Kimchi');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Kimchi' WHERE LanguageId=@Vi AND EntityId=128 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=129 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (129, @Vi, N'Category', N'Name', N'Rau muối');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Rau muối' WHERE LanguageId=@Vi AND EntityId=129 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=130 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (130, @Vi, N'Category', N'Name', N'Gia vị');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Gia vị' WHERE LanguageId=@Vi AND EntityId=130 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=131 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (131, @Vi, N'Category', N'Name', N'Gia vị nấu ăn');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Gia vị nấu ăn' WHERE LanguageId=@Vi AND EntityId=131 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=132 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (132, @Vi, N'Category', N'Name', N'Gia vị khô');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Gia vị khô' WHERE LanguageId=@Vi AND EntityId=132 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=133 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (133, @Vi, N'Category', N'Name', N'Nước chấm');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Nước chấm' WHERE LanguageId=@Vi AND EntityId=133 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=134 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (134, @Vi, N'Category', N'Name', N'Nền súp');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Nền súp' WHERE LanguageId=@Vi AND EntityId=134 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=135 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (135, @Vi, N'Category', N'Name', N'Tương ớt');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Tương ớt' WHERE LanguageId=@Vi AND EntityId=135 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=136 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (136, @Vi, N'Category', N'Name', N'Nước tương');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Nước tương' WHERE LanguageId=@Vi AND EntityId=136 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=137 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (137, @Vi, N'Category', N'Name', N'Dầu ăn');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Dầu ăn' WHERE LanguageId=@Vi AND EntityId=137 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=138 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (138, @Vi, N'Category', N'Name', N'Muối & Tiêu');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Muối & Tiêu' WHERE LanguageId=@Vi AND EntityId=138 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=139 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (139, @Vi, N'Category', N'Name', N'Giấm');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Giấm' WHERE LanguageId=@Vi AND EntityId=139 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=140 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (140, @Vi, N'Category', N'Name', N'Đường');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đường' WHERE LanguageId=@Vi AND EntityId=140 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=141 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (141, @Vi, N'Category', N'Name', N'Đồ hộp');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đồ hộp' WHERE LanguageId=@Vi AND EntityId=141 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=142 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (142, @Vi, N'Category', N'Name', N'Bảo quản & Lên men');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bảo quản & Lên men' WHERE LanguageId=@Vi AND EntityId=142 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=143 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (143, @Vi, N'Category', N'Name', N'Thực phẩm đóng gói');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thực phẩm đóng gói' WHERE LanguageId=@Vi AND EntityId=143 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=144 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (144, @Vi, N'Category', N'Name', N'Thực phẩm đóng hộp');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thực phẩm đóng hộp' WHERE LanguageId=@Vi AND EntityId=144 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=145 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (145, @Vi, N'Category', N'Name', N'Ruốc / Thịt chà bông');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Ruốc / Thịt chà bông' WHERE LanguageId=@Vi AND EntityId=145 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=146 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (146, @Vi, N'Category', N'Name', N'Đậu phụ thối');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đậu phụ thối' WHERE LanguageId=@Vi AND EntityId=146 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=147 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (147, @Vi, N'Category', N'Name', N'Hàng khô');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Hàng khô' WHERE LanguageId=@Vi AND EntityId=147 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=148 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (148, @Vi, N'Category', N'Name', N'Gạo');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Gạo' WHERE LanguageId=@Vi AND EntityId=148 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=149 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (149, @Vi, N'Category', N'Name', N'Mì');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Mì' WHERE LanguageId=@Vi AND EntityId=149 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=150 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (150, @Vi, N'Category', N'Name', N'Ngũ cốc');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Ngũ cốc' WHERE LanguageId=@Vi AND EntityId=150 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=151 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (151, @Vi, N'Category', N'Name', N'Rau khô');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Rau khô' WHERE LanguageId=@Vi AND EntityId=151 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=152 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (152, @Vi, N'Category', N'Name', N'Gia vị & Thảo mộc');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Gia vị & Thảo mộc' WHERE LanguageId=@Vi AND EntityId=152 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=153 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (153, @Vi, N'Category', N'Name', N'Bột & Tinh bột');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Bột & Tinh bột' WHERE LanguageId=@Vi AND EntityId=153 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=154 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (154, @Vi, N'Category', N'Name', N'Hạt khô & Hạt giống');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Hạt khô & Hạt giống' WHERE LanguageId=@Vi AND EntityId=154 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=155 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (155, @Vi, N'Category', N'Name', N'Hải sản khô');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Hải sản khô' WHERE LanguageId=@Vi AND EntityId=155 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=156 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (156, @Vi, N'Category', N'Name', N'Khác');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Khác' WHERE LanguageId=@Vi AND EntityId=156 AND LocaleKeyGroup=N'Category' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=3 AND LocaleKeyGroup=N'Menu' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (3, @Vi, N'Menu', N'Name', N'Thông tin');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thông tin' WHERE LanguageId=@Vi AND EntityId=3 AND LocaleKeyGroup=N'Menu' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=4 AND LocaleKeyGroup=N'Menu' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (4, @Vi, N'Menu', N'Name', N'Dịch vụ khách hàng');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Dịch vụ khách hàng' WHERE LanguageId=@Vi AND EntityId=4 AND LocaleKeyGroup=N'Menu' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=5 AND LocaleKeyGroup=N'Menu' AND LocaleKey=N'Name')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (5, @Vi, N'Menu', N'Name', N'Tài khoản của tôi');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Tài khoản của tôi' WHERE LanguageId=@Vi AND EntityId=5 AND LocaleKeyGroup=N'Menu' AND LocaleKey=N'Name';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=7 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (7, @Vi, N'MenuItem', N'Title', N'Sơ đồ trang web');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Sơ đồ trang web' WHERE LanguageId=@Vi AND EntityId=7 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=12 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (12, @Vi, N'MenuItem', N'Title', N'Liên hệ chúng tôi');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Liên hệ chúng tôi' WHERE LanguageId=@Vi AND EntityId=12 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=13 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (13, @Vi, N'MenuItem', N'Title', N'Tìm kiếm');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Tìm kiếm' WHERE LanguageId=@Vi AND EntityId=13 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=14 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (14, @Vi, N'MenuItem', N'Title', N'Tin tức');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Tin tức' WHERE LanguageId=@Vi AND EntityId=14 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=15 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (15, @Vi, N'MenuItem', N'Title', N'Blog');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Blog' WHERE LanguageId=@Vi AND EntityId=15 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=16 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (16, @Vi, N'MenuItem', N'Title', N'Sản phẩm đã xem gần đây');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Sản phẩm đã xem gần đây' WHERE LanguageId=@Vi AND EntityId=16 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=17 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (17, @Vi, N'MenuItem', N'Title', N'Danh sách so sánh sản phẩm');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Danh sách so sánh sản phẩm' WHERE LanguageId=@Vi AND EntityId=17 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=18 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (18, @Vi, N'MenuItem', N'Title', N'Sản phẩm mới');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Sản phẩm mới' WHERE LanguageId=@Vi AND EntityId=18 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=19 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (19, @Vi, N'MenuItem', N'Title', N'Tài khoản của tôi');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Tài khoản của tôi' WHERE LanguageId=@Vi AND EntityId=19 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=20 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (20, @Vi, N'MenuItem', N'Title', N'Đơn đặt hàng');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Đơn đặt hàng' WHERE LanguageId=@Vi AND EntityId=20 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=21 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (21, @Vi, N'MenuItem', N'Title', N'Địa chỉ');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Địa chỉ' WHERE LanguageId=@Vi AND EntityId=21 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=22 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (22, @Vi, N'MenuItem', N'Title', N'Giỏ hàng');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Giỏ hàng' WHERE LanguageId=@Vi AND EntityId=22 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=23 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (23, @Vi, N'MenuItem', N'Title', N'Danh sách yêu thích');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Danh sách yêu thích' WHERE LanguageId=@Vi AND EntityId=23 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=24 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (24, @Vi, N'MenuItem', N'Title', N'Áp dụng cho tài khoản nhà cung cấp');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Áp dụng cho tài khoản nhà cung cấp' WHERE LanguageId=@Vi AND EntityId=24 AND LocaleKeyGroup=N'MenuItem' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=1 AND LocaleKeyGroup=N'Topic' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (1, @Vi, N'Topic', N'Title', N'Về chúng tôi');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Về chúng tôi' WHERE LanguageId=@Vi AND EntityId=1 AND LocaleKeyGroup=N'Topic' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=3 AND LocaleKeyGroup=N'Topic' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (3, @Vi, N'Topic', N'Title', N'Điều khoản sử dụng');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Điều khoản sử dụng' WHERE LanguageId=@Vi AND EntityId=3 AND LocaleKeyGroup=N'Topic' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=8 AND LocaleKeyGroup=N'Topic' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (8, @Vi, N'Topic', N'Title', N'Thông báo bảo mật');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Thông báo bảo mật' WHERE LanguageId=@Vi AND EntityId=8 AND LocaleKeyGroup=N'Topic' AND LocaleKey=N'Title';

IF NOT EXISTS (SELECT 1 FROM LocalizedProperty WHERE LanguageId=@Vi AND EntityId=10 AND LocaleKeyGroup=N'Topic' AND LocaleKey=N'Title')
  INSERT INTO LocalizedProperty (EntityId, LanguageId, LocaleKeyGroup, LocaleKey, LocaleValue) VALUES (10, @Vi, N'Topic', N'Title', N'Giao hàng & đổi trả');
ELSE
  UPDATE LocalizedProperty SET LocaleValue=N'Giao hàng & đổi trả' WHERE LanguageId=@Vi AND EntityId=10 AND LocaleKeyGroup=N'Topic' AND LocaleKey=N'Title';

/* ========== 2) LocaleStringResource (EN + VI theme/UI keys) ========== */
IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'account.login.account')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'account.login.account', N'Account');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Account' WHERE LanguageId=@En AND ResourceName=N'account.login.account';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'account.login.account')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'account.login.account', N'Tài khoản');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Tài khoản' WHERE LanguageId=@Vi AND ResourceName=N'account.login.account';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'account.login.breadcrumb')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'account.login.breadcrumb', N'Login');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Login' WHERE LanguageId=@En AND ResourceName=N'account.login.breadcrumb';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'account.login.breadcrumb')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'account.login.breadcrumb', N'Đăng nhập');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đăng nhập' WHERE LanguageId=@Vi AND ResourceName=N'account.login.breadcrumb';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'account.login.emailaddress')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'account.login.emailaddress', N'Email Address');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Email Address' WHERE LanguageId=@En AND ResourceName=N'account.login.emailaddress';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'account.login.emailaddress')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'account.login.emailaddress', N'Địa chỉ email');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Địa chỉ email' WHERE LanguageId=@Vi AND ResourceName=N'account.login.emailaddress';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'account.login.orloginwith')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'account.login.orloginwith', N'Or Login With');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Or Login With' WHERE LanguageId=@En AND ResourceName=N'account.login.orloginwith';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'account.login.orloginwith')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'account.login.orloginwith', N'Hoặc đăng nhập với');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hoặc đăng nhập với' WHERE LanguageId=@Vi AND ResourceName=N'account.login.orloginwith';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'account.login.password')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'account.login.password', N'Password');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Password' WHERE LanguageId=@En AND ResourceName=N'account.login.password';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'account.login.password')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'account.login.password', N'Mật khẩu');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Mật khẩu' WHERE LanguageId=@Vi AND ResourceName=N'account.login.password';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'account.login.pleaselogin')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'account.login.pleaselogin', N'Please login to your account');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Please login to your account' WHERE LanguageId=@En AND ResourceName=N'account.login.pleaselogin';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'account.login.pleaselogin')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'account.login.pleaselogin', N'Vui lòng đăng nhập vào tài khoản của bạn');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Vui lòng đăng nhập vào tài khoản của bạn' WHERE LanguageId=@Vi AND ResourceName=N'account.login.pleaselogin';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'account.login.rememberme')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'account.login.rememberme', N'Remember me');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Remember me' WHERE LanguageId=@En AND ResourceName=N'account.login.rememberme';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'account.login.rememberme')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'account.login.rememberme', N'Ghi nhớ đăng nhập');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Ghi nhớ đăng nhập' WHERE LanguageId=@Vi AND ResourceName=N'account.login.rememberme';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'account.login.username')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'account.login.username', N'Username');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Username' WHERE LanguageId=@En AND ResourceName=N'account.login.username';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'account.login.username')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'account.login.username', N'Tên đăng nhập');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Tên đăng nhập' WHERE LanguageId=@Vi AND ResourceName=N'account.login.username';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'account.register.alreadyhaveaccount')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'account.register.alreadyhaveaccount', N'Already have account?');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Already have account?' WHERE LanguageId=@En AND ResourceName=N'account.register.alreadyhaveaccount';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'account.register.alreadyhaveaccount')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'account.register.alreadyhaveaccount', N'Đã có tài khoản?');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đã có tài khoản?' WHERE LanguageId=@Vi AND ResourceName=N'account.register.alreadyhaveaccount';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'account.register.createyouraccount')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'account.register.createyouraccount', N'Create Your Account');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Create Your Account' WHERE LanguageId=@En AND ResourceName=N'account.register.createyouraccount';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'account.register.createyouraccount')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'account.register.createyouraccount', N'Tạo tài khoản của bạn');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Tạo tài khoản của bạn' WHERE LanguageId=@Vi AND ResourceName=N'account.register.createyouraccount';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'account.register.now')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'account.register.now', N'Register Now');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Register Now' WHERE LanguageId=@En AND ResourceName=N'account.register.now';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'account.register.now')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'account.register.now', N'Đăng ký ngay');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đăng ký ngay' WHERE LanguageId=@Vi AND ResourceName=N'account.register.now';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'account.register.orregisterwith')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'account.register.orregisterwith', N'Or Register With');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Or Register With' WHERE LanguageId=@En AND ResourceName=N'account.register.orregisterwith';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'account.register.orregisterwith')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'account.register.orregisterwith', N'Hoặc đăng ký với');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hoặc đăng ký với' WHERE LanguageId=@Vi AND ResourceName=N'account.register.orregisterwith';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'catalog.filtered')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'catalog.filtered', N'Filtered');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Filtered' WHERE LanguageId=@En AND ResourceName=N'catalog.filtered';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'catalog.filtered')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'catalog.filtered', N'Đã lọc');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đã lọc' WHERE LanguageId=@Vi AND ResourceName=N'catalog.filtered';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'catalog.items')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'catalog.items', N'{0} items');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'{0} items' WHERE LanguageId=@En AND ResourceName=N'catalog.items';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'catalog.items')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'catalog.items', N'{0} sản phẩm');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'{0} sản phẩm' WHERE LanguageId=@Vi AND ResourceName=N'catalog.items';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'catalog.shop')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'catalog.shop', N'Shop');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Shop' WHERE LanguageId=@En AND ResourceName=N'catalog.shop';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'catalog.shop')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'catalog.shop', N'Cửa hàng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Cửa hàng' WHERE LanguageId=@Vi AND ResourceName=N'catalog.shop';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'catalog.showingresults')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'catalog.showingresults', N'Showing {0}-{1} of {2} results');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Showing {0}-{1} of {2} results' WHERE LanguageId=@En AND ResourceName=N'catalog.showingresults';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'catalog.showingresults')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'catalog.showingresults', N'Hiển thị {0}-{1} trong {2} kết quả');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hiển thị {0}-{1} trong {2} kết quả' WHERE LanguageId=@Vi AND ResourceName=N'catalog.showingresults';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'catalog.sort')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'catalog.sort', N'Sort:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Sort:' WHERE LanguageId=@En AND ResourceName=N'catalog.sort';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'catalog.sort')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'catalog.sort', N'Sắp xếp:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Sắp xếp:' WHERE LanguageId=@Vi AND ResourceName=N'catalog.sort';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'catalog.sort.default')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'catalog.sort.default', N'Default Sorting');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Default Sorting' WHERE LanguageId=@En AND ResourceName=N'catalog.sort.default';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'catalog.sort.default')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'catalog.sort.default', N'Sắp xếp mặc định');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Sắp xếp mặc định' WHERE LanguageId=@Vi AND ResourceName=N'catalog.sort.default';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'catalog.sort.hightolow')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'catalog.sort.hightolow', N'High to Low');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'High to Low' WHERE LanguageId=@En AND ResourceName=N'catalog.sort.hightolow';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'catalog.sort.hightolow')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'catalog.sort.hightolow', N'Giá cao đến thấp');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giá cao đến thấp' WHERE LanguageId=@Vi AND ResourceName=N'catalog.sort.hightolow';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'catalog.sort.lowtohigh')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'catalog.sort.lowtohigh', N'Low to High');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Low to High' WHERE LanguageId=@En AND ResourceName=N'catalog.sort.lowtohigh';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'catalog.sort.lowtohigh')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'catalog.sort.lowtohigh', N'Giá thấp đến cao');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giá thấp đến cao' WHERE LanguageId=@Vi AND ResourceName=N'catalog.sort.lowtohigh';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'catalog.sort.newadded')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'catalog.sort.newadded', N'New Added');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'New Added' WHERE LanguageId=@En AND ResourceName=N'catalog.sort.newadded';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'catalog.sort.newadded')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'catalog.sort.newadded', N'Mới thêm');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Mới thêm' WHERE LanguageId=@Vi AND ResourceName=N'catalog.sort.newadded';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'catalog.sort.onsale')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'catalog.sort.onsale', N'On Sale');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'On Sale' WHERE LanguageId=@En AND ResourceName=N'catalog.sort.onsale';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'catalog.sort.onsale')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'catalog.sort.onsale', N'Đang giảm giá');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đang giảm giá' WHERE LanguageId=@Vi AND ResourceName=N'catalog.sort.onsale';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'checkout.checkout')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'checkout.checkout', N'Checkout');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Checkout' WHERE LanguageId=@En AND ResourceName=N'checkout.checkout';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'checkout.checkout')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'checkout.checkout', N'Thanh toán');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Thanh toán' WHERE LanguageId=@Vi AND ResourceName=N'checkout.checkout';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'checkout.page')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'checkout.page', N'Page');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Page' WHERE LanguageId=@En AND ResourceName=N'checkout.page';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'checkout.page')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'checkout.page', N'Trang');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Trang' WHERE LanguageId=@Vi AND ResourceName=N'checkout.page';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.actions')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.actions', N'Actions');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Actions' WHERE LanguageId=@En AND ResourceName=N'common.actions';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.actions')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.actions', N'Thao tác');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Thao tác' WHERE LanguageId=@Vi AND ResourceName=N'common.actions';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.buynow')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.buynow', N'Buy Now');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Buy Now' WHERE LanguageId=@En AND ResourceName=N'common.buynow';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.buynow')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.buynow', N'Mua ngay');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Mua ngay' WHERE LanguageId=@Vi AND ResourceName=N'common.buynow';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.close')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.close', N'Close');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Close' WHERE LanguageId=@En AND ResourceName=N'common.close';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.close')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.close', N'Đóng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đóng' WHERE LanguageId=@Vi AND ResourceName=N'common.close';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.countdown.days')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.countdown.days', N'Days');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Days' WHERE LanguageId=@En AND ResourceName=N'common.countdown.days';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.countdown.days')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.countdown.days', N'Ngày');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Ngày' WHERE LanguageId=@Vi AND ResourceName=N'common.countdown.days';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.countdown.hours')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.countdown.hours', N'Hours');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hours' WHERE LanguageId=@En AND ResourceName=N'common.countdown.hours';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.countdown.hours')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.countdown.hours', N'Giờ');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giờ' WHERE LanguageId=@Vi AND ResourceName=N'common.countdown.hours';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.countdown.mins')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.countdown.mins', N'Mins');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Mins' WHERE LanguageId=@En AND ResourceName=N'common.countdown.mins';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.countdown.mins')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.countdown.mins', N'Phút');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Phút' WHERE LanguageId=@Vi AND ResourceName=N'common.countdown.mins';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.countdown.secs')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.countdown.secs', N'Secs');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Secs' WHERE LanguageId=@En AND ResourceName=N'common.countdown.secs';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.countdown.secs')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.countdown.secs', N'Giây');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giây' WHERE LanguageId=@Vi AND ResourceName=N'common.countdown.secs';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.next')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.next', N'Next');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Next' WHERE LanguageId=@En AND ResourceName=N'common.next';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.next')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.next', N'Sau');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Sau' WHERE LanguageId=@Vi AND ResourceName=N'common.next';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.opencart')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.opencart', N'Open cart');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Open cart' WHERE LanguageId=@En AND ResourceName=N'common.opencart';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.opencart')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.opencart', N'Mở giỏ hàng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Mở giỏ hàng' WHERE LanguageId=@Vi AND ResourceName=N'common.opencart';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.opensearch')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.opensearch', N'Open search');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Open search' WHERE LanguageId=@En AND ResourceName=N'common.opensearch';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.opensearch')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.opensearch', N'Mở tìm kiếm');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Mở tìm kiếm' WHERE LanguageId=@Vi AND ResourceName=N'common.opensearch';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.previous')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.previous', N'Previous');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Previous' WHERE LanguageId=@En AND ResourceName=N'common.previous';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.previous')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.previous', N'Trước');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Trước' WHERE LanguageId=@Vi AND ResourceName=N'common.previous';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.searchboxcategory')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.searchboxcategory', N'Search box category');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Search box category' WHERE LanguageId=@En AND ResourceName=N'common.searchboxcategory';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.searchboxcategory')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.searchboxcategory', N'Danh mục tìm kiếm');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Danh mục tìm kiếm' WHERE LanguageId=@Vi AND ResourceName=N'common.searchboxcategory';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.shopnow')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.shopnow', N'Shop Now');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Shop Now' WHERE LanguageId=@En AND ResourceName=N'common.shopnow';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.shopnow')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.shopnow', N'Mua ngay');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Mua ngay' WHERE LanguageId=@Vi AND ResourceName=N'common.shopnow';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.storetheme')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.storetheme', N'Store theme');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Store theme' WHERE LanguageId=@En AND ResourceName=N'common.storetheme';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.storetheme')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.storetheme', N'Giao diện cửa hàng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giao diện cửa hàng' WHERE LanguageId=@Vi AND ResourceName=N'common.storetheme';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.togglecategory')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.togglecategory', N'Toggle category');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Toggle category' WHERE LanguageId=@En AND ResourceName=N'common.togglecategory';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.togglecategory')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.togglecategory', N'Mở/đóng danh mục');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Mở/đóng danh mục' WHERE LanguageId=@Vi AND ResourceName=N'common.togglecategory';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'common.viewall')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'common.viewall', N'View All');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'View All' WHERE LanguageId=@En AND ResourceName=N'common.viewall';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'common.viewall')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'common.viewall', N'Xem tất cả');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Xem tất cả' WHERE LanguageId=@Vi AND ResourceName=N'common.viewall';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'contactus.address')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'contactus.address', N'9070 Green Lake Drive Chevy Chase, MD 20815, USA');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'9070 Green Lake Drive Chevy Chase, MD 20815, USA' WHERE LanguageId=@En AND ResourceName=N'contactus.address';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'contactus.address')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'contactus.address', N'9070 Green Lake Drive Chevy Chase, MD 20815, USA');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'9070 Green Lake Drive Chevy Chase, MD 20815, USA' WHERE LanguageId=@Vi AND ResourceName=N'contactus.address';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'contactus.emailaddress')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'contactus.emailaddress', N'Email Address');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Email Address' WHERE LanguageId=@En AND ResourceName=N'contactus.emailaddress';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'contactus.emailaddress')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'contactus.emailaddress', N'Địa chỉ email');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Địa chỉ email' WHERE LanguageId=@Vi AND ResourceName=N'contactus.emailaddress';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'contactus.fullname.email')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'contactus.fullname.email', N'Email Address');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Email Address' WHERE LanguageId=@En AND ResourceName=N'contactus.fullname.email';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'contactus.fullname.email')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'contactus.fullname.email', N'Địa chỉ email');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Địa chỉ email' WHERE LanguageId=@Vi AND ResourceName=N'contactus.fullname.email';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'contactus.fullname.enquiry')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'contactus.fullname.enquiry', N'Enquiry');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Enquiry' WHERE LanguageId=@En AND ResourceName=N'contactus.fullname.enquiry';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'contactus.fullname.enquiry')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'contactus.fullname.enquiry', N'Nội dung');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Nội dung' WHERE LanguageId=@Vi AND ResourceName=N'contactus.fullname.enquiry';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'contactus.fullname.fullname')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'contactus.fullname.fullname', N'Full Name');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Full Name' WHERE LanguageId=@En AND ResourceName=N'contactus.fullname.fullname';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'contactus.fullname.fullname')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'contactus.fullname.fullname', N'Họ và tên');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Họ và tên' WHERE LanguageId=@Vi AND ResourceName=N'contactus.fullname.fullname';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'contactus.fullname.subject')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'contactus.fullname.subject', N'Your Subject');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Your Subject' WHERE LanguageId=@En AND ResourceName=N'contactus.fullname.subject';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'contactus.fullname.subject')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'contactus.fullname.subject', N'Tiêu đề');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Tiêu đề' WHERE LanguageId=@Vi AND ResourceName=N'contactus.fullname.subject';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'contactus.getin')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'contactus.getin', N'Get in');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Get in' WHERE LanguageId=@En AND ResourceName=N'contactus.getin';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'contactus.getin')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'contactus.getin', N'Liên hệ');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Liên hệ' WHERE LanguageId=@Vi AND ResourceName=N'contactus.getin';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'contactus.intro')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'contactus.intro', N'Lorem ipsum dolor sit amet, consectetur adipis icing elit, sed do eius mod tempor.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Lorem ipsum dolor sit amet, consectetur adipis icing elit, sed do eius mod tempor.' WHERE LanguageId=@En AND ResourceName=N'contactus.intro';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'contactus.intro')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'contactus.intro', N'Hãy liên hệ với chúng tôi nếu bạn có bất kỳ câu hỏi hoặc yêu cầu nào.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hãy liên hệ với chúng tôi nếu bạn có bất kỳ câu hỏi hoặc yêu cầu nào.' WHERE LanguageId=@Vi AND ResourceName=N'contactus.intro';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'contactus.ourlocation')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'contactus.ourlocation', N'Our Location');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Our Location' WHERE LanguageId=@En AND ResourceName=N'contactus.ourlocation';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'contactus.ourlocation')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'contactus.ourlocation', N'Địa chỉ của chúng tôi');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Địa chỉ của chúng tôi' WHERE LanguageId=@Vi AND ResourceName=N'contactus.ourlocation';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'contactus.phonenumber')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'contactus.phonenumber', N'Phone Number');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Phone Number' WHERE LanguageId=@En AND ResourceName=N'contactus.phonenumber';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'contactus.phonenumber')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'contactus.phonenumber', N'Số điện thoại');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Số điện thoại' WHERE LanguageId=@Vi AND ResourceName=N'contactus.phonenumber';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'contactus.supportemail')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'contactus.supportemail', N'support@example.com');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'support@example.com' WHERE LanguageId=@En AND ResourceName=N'contactus.supportemail';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'contactus.supportemail')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'contactus.supportemail', N'support@example.com');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'support@example.com' WHERE LanguageId=@Vi AND ResourceName=N'contactus.supportemail';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'contactus.touch')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'contactus.touch', N'touch');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'touch' WHERE LanguageId=@En AND ResourceName=N'contactus.touch';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'contactus.touch')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'contactus.touch', N'với chúng tôi');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'với chúng tôi' WHERE LanguageId=@Vi AND ResourceName=N'contactus.touch';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'footer.downloadapp')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'footer.downloadapp', N'Download App');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Download App' WHERE LanguageId=@En AND ResourceName=N'footer.downloadapp';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'footer.downloadapp')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'footer.downloadapp', N'Tải ứng dụng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Tải ứng dụng' WHERE LanguageId=@Vi AND ResourceName=N'footer.downloadapp';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'footer.storedescription')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'footer.storedescription', N'{0} is a online grocery shop. we are selling grocery products');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'{0} is a online grocery shop. we are selling grocery products' WHERE LanguageId=@En AND ResourceName=N'footer.storedescription';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'footer.storedescription')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'footer.storedescription', N'{0} là cửa hàng tạp hóa trực tuyến. Chúng tôi bán các sản phẩm tạp hóa');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'{0} là cửa hàng tạp hóa trực tuyến. Chúng tôi bán các sản phẩm tạp hóa' WHERE LanguageId=@Vi AND ResourceName=N'footer.storedescription';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.allcategories')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.allcategories', N'All Categories');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'All Categories' WHERE LanguageId=@En AND ResourceName=N'homepage.allcategories';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.allcategories')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.allcategories', N'Tất cả danh mục');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Tất cả danh mục' WHERE LanguageId=@Vi AND ResourceName=N'homepage.allcategories';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.banner1.subtitle')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.banner1.subtitle', N'Get 40% discount for new arrival');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Get 40% discount for new arrival' WHERE LanguageId=@En AND ResourceName=N'homepage.banner1.subtitle';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.banner1.subtitle')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.banner1.subtitle', N'Giảm 40% cho hàng mới về');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giảm 40% cho hàng mới về' WHERE LanguageId=@Vi AND ResourceName=N'homepage.banner1.subtitle';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.banner1.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.banner1.title', N'Organic raw green beans & seed');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Organic raw green beans & seed' WHERE LanguageId=@En AND ResourceName=N'homepage.banner1.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.banner1.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.banner1.title', N'Đậu xanh hữu cơ & hạt giống');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đậu xanh hữu cơ & hạt giống' WHERE LanguageId=@Vi AND ResourceName=N'homepage.banner1.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.banner2.subtitle')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.banner2.subtitle', N'Get 30% discount for new arrival');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Get 30% discount for new arrival' WHERE LanguageId=@En AND ResourceName=N'homepage.banner2.subtitle';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.banner2.subtitle')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.banner2.subtitle', N'Giảm 30% cho hàng mới về');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giảm 30% cho hàng mới về' WHERE LanguageId=@Vi AND ResourceName=N'homepage.banner2.subtitle';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.banner2.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.banner2.title', N'Organic Fruits and vegetables');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Organic Fruits and vegetables' WHERE LanguageId=@En AND ResourceName=N'homepage.banner2.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.banner2.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.banner2.title', N'Trái cây và rau củ hữu cơ');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Trái cây và rau củ hữu cơ' WHERE LanguageId=@Vi AND ResourceName=N'homepage.banner2.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.bestsell')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.bestsell', N'Best Sell');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Best Sell' WHERE LanguageId=@En AND ResourceName=N'homepage.bestsell';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.bestsell')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.bestsell', N'Bán chạy nhất');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Bán chạy nhất' WHERE LanguageId=@Vi AND ResourceName=N'homepage.bestsell';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.category')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.category', N'Category');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Category' WHERE LanguageId=@En AND ResourceName=N'homepage.category';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.category')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.category', N'Danh mục');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Danh mục' WHERE LanguageId=@Vi AND ResourceName=N'homepage.category';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.featured')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.featured', N'Featured');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Featured' WHERE LanguageId=@En AND ResourceName=N'homepage.featured';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.featured')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.featured', N'Nổi bật');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Nổi bật' WHERE LanguageId=@Vi AND ResourceName=N'homepage.featured';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.featured.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.featured.description', N'Discover our handpicked selection of top-rated and trending items. Limited time offers and exclusive deals await!');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Discover our handpicked selection of top-rated and trending items. Limited time offers and exclusive deals await!' WHERE LanguageId=@En AND ResourceName=N'homepage.featured.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.featured.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.featured.description', N'Khám phá bộ sưu tập sản phẩm nổi bật và đang thịnh hành. Ưu đãi có thời hạn và deal độc quyền đang chờ bạn!');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Khám phá bộ sưu tập sản phẩm nổi bật và đang thịnh hành. Ưu đãi có thời hạn và deal độc quyền đang chờ bạn!' WHERE LanguageId=@Vi AND ResourceName=N'homepage.featured.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.flashsale')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.flashsale', N'Flash Sale');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Flash Sale' WHERE LanguageId=@En AND ResourceName=N'homepage.flashsale';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.flashsale')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.flashsale', N'Flash Sale');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Flash Sale' WHERE LanguageId=@Vi AND ResourceName=N'homepage.flashsale';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.flashsale.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.flashsale.description', N'Discover our handpicked selection of top-rated and trending items. Limited time offers and exclusive deals await!');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Discover our handpicked selection of top-rated and trending items. Limited time offers and exclusive deals await!' WHERE LanguageId=@En AND ResourceName=N'homepage.flashsale.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.flashsale.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.flashsale.description', N'Khám phá bộ sưu tập sản phẩm nổi bật và đang thịnh hành. Ưu đãi có thời hạn và deal độc quyền đang chờ bạn!');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Khám phá bộ sưu tập sản phẩm nổi bật và đang thịnh hành. Ưu đãi có thời hạn và deal độc quyền đang chờ bạn!' WHERE LanguageId=@Vi AND ResourceName=N'homepage.flashsale.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.hotdeals')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.hotdeals', N'Hot Deals');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hot Deals' WHERE LanguageId=@En AND ResourceName=N'homepage.hotdeals';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.hotdeals')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.hotdeals', N'Ưu đãi nóng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Ưu đãi nóng' WHERE LanguageId=@Vi AND ResourceName=N'homepage.hotdeals';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.newarrival')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.newarrival', N'New Arrival');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'New Arrival' WHERE LanguageId=@En AND ResourceName=N'homepage.newarrival';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.newarrival')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.newarrival', N'Hàng mới về');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hàng mới về' WHERE LanguageId=@Vi AND ResourceName=N'homepage.newarrival';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.news.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.news.description', N'Dive into a world of knowledge and inspiration with our informative articles.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Dive into a world of knowledge and inspiration with our informative articles.' WHERE LanguageId=@En AND ResourceName=N'homepage.news.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.news.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.news.description', N'Khám phá thế giới kiến thức và cảm hứng qua các bài viết hữu ích của chúng tôi.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Khám phá thế giới kiến thức và cảm hứng qua các bài viết hữu ích của chúng tôi.' WHERE LanguageId=@Vi AND ResourceName=N'homepage.news.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.news.readour')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.news.readour', N'Read Our');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Read Our' WHERE LanguageId=@En AND ResourceName=N'homepage.news.readour';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.news.readour')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.news.readour', N'Đọc');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đọc' WHERE LanguageId=@Vi AND ResourceName=N'homepage.news.readour';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.news.tag.grocery')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.news.tag.grocery', N'Grocery');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Grocery' WHERE LanguageId=@En AND ResourceName=N'homepage.news.tag.grocery';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.news.tag.grocery')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.news.tag.grocery', N'Tạp hóa');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Tạp hóa' WHERE LanguageId=@Vi AND ResourceName=N'homepage.news.tag.grocery';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.news.tag.organic')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.news.tag.organic', N'Organic');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Organic' WHERE LanguageId=@En AND ResourceName=N'homepage.news.tag.organic';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.news.tag.organic')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.news.tag.organic', N'Hữu cơ');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hữu cơ' WHERE LanguageId=@Vi AND ResourceName=N'homepage.news.tag.organic';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.offers.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.offers.description', N'Enjoy a massive 45% discount on your entire order. That''s right, save big on your favorite items and treat yourself to something special.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Enjoy a massive 45% discount on your entire order. That''s right, save big on your favorite items and treat yourself to something special.' WHERE LanguageId=@En AND ResourceName=N'homepage.offers.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.offers.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.offers.description', N'Tận hưởng giảm giá tới 45% cho toàn bộ đơn hàng. Tiết kiệm lớn cho những món yêu thích của bạn.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Tận hưởng giảm giá tới 45% cho toàn bộ đơn hàng. Tiết kiệm lớn cho những món yêu thích của bạn.' WHERE LanguageId=@Vi AND ResourceName=N'homepage.offers.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.offers.hurryup')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.offers.hurryup', N'Hurry Up!');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hurry Up!' WHERE LanguageId=@En AND ResourceName=N'homepage.offers.hurryup';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.offers.hurryup')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.offers.hurryup', N'Nhanh lên!');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Nhanh lên!' WHERE LanguageId=@Vi AND ResourceName=N'homepage.offers.hurryup';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.offers.offerendin')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.offers.offerendin', N'Offer End In');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Offer End In' WHERE LanguageId=@En AND ResourceName=N'homepage.offers.offerendin';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.offers.offerendin')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.offers.offerendin', N'Ưu đãi kết thúc sau');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Ưu đãi kết thúc sau' WHERE LanguageId=@Vi AND ResourceName=N'homepage.offers.offerendin';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.offers.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.offers.title', N'Pure & Organic Fruits, Veggies, and Meat');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Pure & Organic Fruits, Veggies, and Meat' WHERE LanguageId=@En AND ResourceName=N'homepage.offers.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.offers.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.offers.title', N'Trái cây, rau củ và thịt thuần hữu cơ');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Trái cây, rau củ và thịt thuần hữu cơ' WHERE LanguageId=@Vi AND ResourceName=N'homepage.offers.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.popular')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.popular', N'Popular');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Popular' WHERE LanguageId=@En AND ResourceName=N'homepage.popular';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.popular')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.popular', N'Phổ biến');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Phổ biến' WHERE LanguageId=@Vi AND ResourceName=N'homepage.popular';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.popular.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.popular.description', N'Our bestsellers! Discover the customer favorites that everyone''s talking about.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Our bestsellers! Discover the customer favorites that everyone''s talking about.' WHERE LanguageId=@En AND ResourceName=N'homepage.popular.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.popular.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.popular.description', N'Sản phẩm bán chạy! Khám phá những món được khách hàng yêu thích nhất.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Sản phẩm bán chạy! Khám phá những món được khách hàng yêu thích nhất.' WHERE LanguageId=@Vi AND ResourceName=N'homepage.popular.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.popular.products')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.popular.products', N'Products');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Products' WHERE LanguageId=@En AND ResourceName=N'homepage.popular.products';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.popular.products')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.popular.products', N'Sản phẩm');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Sản phẩm' WHERE LanguageId=@Vi AND ResourceName=N'homepage.popular.products';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.recentlyadded')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.recentlyadded', N'Recently Added');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Recently Added' WHERE LanguageId=@En AND ResourceName=N'homepage.recentlyadded';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.recentlyadded')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.recentlyadded', N'Mới thêm gần đây');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Mới thêm gần đây' WHERE LanguageId=@Vi AND ResourceName=N'homepage.recentlyadded';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.salebanner1.off')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.salebanner1.off', N'20% off');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'20% off' WHERE LanguageId=@En AND ResourceName=N'homepage.salebanner1.off';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.salebanner1.off')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.salebanner1.off', N'Giảm 20%');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giảm 20%' WHERE LanguageId=@Vi AND ResourceName=N'homepage.salebanner1.off';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.salebanner1.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.salebanner1.title', N'Daily Breakfast Items & Beverages');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Daily Breakfast Items & Beverages' WHERE LanguageId=@En AND ResourceName=N'homepage.salebanner1.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.salebanner1.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.salebanner1.title', N'Đồ ăn sáng & Đồ uống hàng ngày');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đồ ăn sáng & Đồ uống hàng ngày' WHERE LanguageId=@Vi AND ResourceName=N'homepage.salebanner1.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.salebanner2.off')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.salebanner2.off', N'40% off');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'40% off' WHERE LanguageId=@En AND ResourceName=N'homepage.salebanner2.off';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.salebanner2.off')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.salebanner2.off', N'Giảm 40%');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giảm 40%' WHERE LanguageId=@Vi AND ResourceName=N'homepage.salebanner2.off';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.salebanner2.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.salebanner2.title', N'Healthy organic dry grains foods');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Healthy organic dry grains foods' WHERE LanguageId=@En AND ResourceName=N'homepage.salebanner2.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.salebanner2.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.salebanner2.title', N'Thực phẩm ngũ cốc hữu cơ lành mạnh');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Thực phẩm ngũ cốc hữu cơ lành mạnh' WHERE LanguageId=@Vi AND ResourceName=N'homepage.salebanner2.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.salebanner3.off')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.salebanner3.off', N'30% Off');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'30% Off' WHERE LanguageId=@En AND ResourceName=N'homepage.salebanner3.off';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.salebanner3.off')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.salebanner3.off', N'Giảm 30%');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giảm 30%' WHERE LanguageId=@Vi AND ResourceName=N'homepage.salebanner3.off';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.salebanner3.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.salebanner3.title', N'New Pet Arrivals Food & Accessories');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'New Pet Arrivals Food & Accessories' WHERE LanguageId=@En AND ResourceName=N'homepage.salebanner3.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.salebanner3.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.salebanner3.title', N'Thức ăn & Phụ kiện thú cưng mới');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Thức ăn & Phụ kiện thú cưng mới' WHERE LanguageId=@Vi AND ResourceName=N'homepage.salebanner3.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.shopby')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.shopby', N'Shop by');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Shop by' WHERE LanguageId=@En AND ResourceName=N'homepage.shopby';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.shopby')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.shopby', N'Mua theo');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Mua theo' WHERE LanguageId=@Vi AND ResourceName=N'homepage.shopby';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.testimonial.clients')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.testimonial.clients', N'Clients');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Clients' WHERE LanguageId=@En AND ResourceName=N'homepage.testimonial.clients';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.testimonial.clients')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.testimonial.clients', N'Khách hàng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Khách hàng' WHERE LanguageId=@Vi AND ResourceName=N'homepage.testimonial.clients';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.testimonial.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.testimonial.description', N'Hear what our satisfied customers have to say about their experience. Real people, real results.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hear what our satisfied customers have to say about their experience. Real people, real results.' WHERE LanguageId=@En AND ResourceName=N'homepage.testimonial.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.testimonial.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.testimonial.description', N'Lắng nghe chia sẻ từ khách hàng hài lòng về trải nghiệm của họ. Người thật, kết quả thật.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Lắng nghe chia sẻ từ khách hàng hài lòng về trải nghiệm của họ. Người thật, kết quả thật.' WHERE LanguageId=@Vi AND ResourceName=N'homepage.testimonial.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.testimonial.quote')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.testimonial.quote', N'oshun Grocery Shop is a fantastic local store! They have a great selection of fresh produce, quality meats, and a wide variety of pantry staples. The staff is friendly and helpful, and the prices are reasonable.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'oshun Grocery Shop is a fantastic local store! They have a great selection of fresh produce, quality meats, and a wide variety of pantry staples. The staff is friendly and helpful, and the prices are reasonable.' WHERE LanguageId=@En AND ResourceName=N'homepage.testimonial.quote';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.testimonial.quote')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.testimonial.quote', N'oshun Grocery Shop là cửa hàng tạp hóa tuyệt vời! Có nhiều rau củ quả tươi, thịt chất lượng và đa dạng thực phẩm thiết yếu. Nhân viên thân thiện, giá cả hợp lý.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'oshun Grocery Shop là cửa hàng tạp hóa tuyệt vời! Có nhiều rau củ quả tươi, thịt chất lượng và đa dạng thực phẩm thiết yếu. Nhân viên thân thiện, giá cả hợp lý.' WHERE LanguageId=@Vi AND ResourceName=N'homepage.testimonial.quote';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.testimonial.role')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.testimonial.role', N'CEO and Founder');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'CEO and Founder' WHERE LanguageId=@En AND ResourceName=N'homepage.testimonial.role';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.testimonial.role')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.testimonial.role', N'CEO và Nhà sáng lập');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'CEO và Nhà sáng lập' WHERE LanguageId=@Vi AND ResourceName=N'homepage.testimonial.role';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.testimonial.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.testimonial.title', N'Testimonial');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Testimonial' WHERE LanguageId=@En AND ResourceName=N'homepage.testimonial.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.testimonial.title')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.testimonial.title', N'Đánh giá');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đánh giá' WHERE LanguageId=@Vi AND ResourceName=N'homepage.testimonial.title';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.topselling')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.topselling', N'Top Selling');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Top Selling' WHERE LanguageId=@En AND ResourceName=N'homepage.topselling';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.topselling')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.topselling', N'Bán chạy');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Bán chạy' WHERE LanguageId=@Vi AND ResourceName=N'homepage.topselling';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'homepage.weekly')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'homepage.weekly', N'Weekly');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Weekly' WHERE LanguageId=@En AND ResourceName=N'homepage.weekly';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'homepage.weekly')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'homepage.weekly', N'Hàng tuần');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hàng tuần' WHERE LanguageId=@Vi AND ResourceName=N'homepage.weekly';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.about')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.about', N'About');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'About' WHERE LanguageId=@En AND ResourceName=N'menu.about';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.about')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.about', N'Giới thiệu');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giới thiệu' WHERE LanguageId=@Vi AND ResourceName=N'menu.about';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.blog')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.blog', N'Blog');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Blog' WHERE LanguageId=@En AND ResourceName=N'menu.blog';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.blog')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.blog', N'Blog');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Blog' WHERE LanguageId=@Vi AND ResourceName=N'menu.blog';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.cart')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.cart', N'Cart');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Cart' WHERE LanguageId=@En AND ResourceName=N'menu.cart';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.cart')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.cart', N'Giỏ hàng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giỏ hàng' WHERE LanguageId=@Vi AND ResourceName=N'menu.cart';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.checkout')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.checkout', N'Checkout');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Checkout' WHERE LanguageId=@En AND ResourceName=N'menu.checkout';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.checkout')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.checkout', N'Thanh toán');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Thanh toán' WHERE LanguageId=@Vi AND ResourceName=N'menu.checkout';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.contact')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.contact', N'Contact');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Contact' WHERE LanguageId=@En AND ResourceName=N'menu.contact';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.contact')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.contact', N'Liên hệ');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Liên hệ' WHERE LanguageId=@Vi AND ResourceName=N'menu.contact';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.faq')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.faq', N'Faq');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Faq' WHERE LanguageId=@En AND ResourceName=N'menu.faq';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.faq')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.faq', N'Câu hỏi thường gặp');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Câu hỏi thường gặp' WHERE LanguageId=@Vi AND ResourceName=N'menu.faq';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.flashsale')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.flashsale', N'FLASH SALE');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'FLASH SALE' WHERE LanguageId=@En AND ResourceName=N'menu.flashsale';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.flashsale')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.flashsale', N'FLASH SALE');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'FLASH SALE' WHERE LanguageId=@Vi AND ResourceName=N'menu.flashsale';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.home')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.home', N'Home');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Home' WHERE LanguageId=@En AND ResourceName=N'menu.home';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.home')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.home', N'Trang chủ');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Trang chủ' WHERE LanguageId=@Vi AND ResourceName=N'menu.home';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.hotline')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.hotline', N'Hotline:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hotline:' WHERE LanguageId=@En AND ResourceName=N'menu.hotline';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.hotline')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.hotline', N'Đường dây nóng:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đường dây nóng:' WHERE LanguageId=@Vi AND ResourceName=N'menu.hotline';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.login')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.login', N'Login');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Login' WHERE LanguageId=@En AND ResourceName=N'menu.login';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.login')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.login', N'Đăng nhập');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đăng nhập' WHERE LanguageId=@Vi AND ResourceName=N'menu.login';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.pages')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.pages', N'Pages');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Pages' WHERE LanguageId=@En AND ResourceName=N'menu.pages';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.pages')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.pages', N'Trang');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Trang' WHERE LanguageId=@Vi AND ResourceName=N'menu.pages';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.register')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.register', N'Register');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Register' WHERE LanguageId=@En AND ResourceName=N'menu.register';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.register')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.register', N'Đăng ký');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đăng ký' WHERE LanguageId=@Vi AND ResourceName=N'menu.register';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.shop')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.shop', N'Shop');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Shop' WHERE LanguageId=@En AND ResourceName=N'menu.shop';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.shop')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.shop', N'Cửa hàng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Cửa hàng' WHERE LanguageId=@Vi AND ResourceName=N'menu.shop';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'menu.wishlist')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'menu.wishlist', N'Wishlist');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Wishlist' WHERE LanguageId=@En AND ResourceName=N'menu.wishlist';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'menu.wishlist')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'menu.wishlist', N'Danh sách yêu thích');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Danh sách yêu thích' WHERE LanguageId=@Vi AND ResourceName=N'menu.wishlist';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'mobile.offcanvas.filterbutton')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'mobile.offcanvas.filterbutton', N'Filter');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Filter' WHERE LanguageId=@En AND ResourceName=N'mobile.offcanvas.filterbutton';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'mobile.offcanvas.filterbutton')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'mobile.offcanvas.filterbutton', N'Bộ lọc');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Bộ lọc' WHERE LanguageId=@Vi AND ResourceName=N'mobile.offcanvas.filterbutton';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'mobile.offcanvas.filtertitle')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'mobile.offcanvas.filtertitle', N'Filters');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Filters' WHERE LanguageId=@En AND ResourceName=N'mobile.offcanvas.filtertitle';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'mobile.offcanvas.filtertitle')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'mobile.offcanvas.filtertitle', N'Bộ lọc');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Bộ lọc' WHERE LanguageId=@Vi AND ResourceName=N'mobile.offcanvas.filtertitle';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'newsletter.subscribe.button')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'newsletter.subscribe.button', N'Subscribe');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Subscribe' WHERE LanguageId=@En AND ResourceName=N'newsletter.subscribe.button';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'newsletter.subscribe.button')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'newsletter.subscribe.button', N'Đăng ký');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đăng ký' WHERE LanguageId=@Vi AND ResourceName=N'newsletter.subscribe.button';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'newsletter.subscribe.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'newsletter.subscribe.description', N'Enjoy early access to sales, new product launches, expert advice, and special offers delivered straight to your inbox.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Enjoy early access to sales, new product launches, expert advice, and special offers delivered straight to your inbox.' WHERE LanguageId=@En AND ResourceName=N'newsletter.subscribe.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'newsletter.subscribe.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'newsletter.subscribe.description', N'Nhận sớm thông tin giảm giá, sản phẩm mới, tư vấn chuyên môn và ưu đãi đặc biệt gửi thẳng vào hộp thư của bạn.');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Nhận sớm thông tin giảm giá, sản phẩm mới, tư vấn chuyên môn và ưu đãi đặc biệt gửi thẳng vào hộp thư của bạn.' WHERE LanguageId=@Vi AND ResourceName=N'newsletter.subscribe.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'newsletter.subscribe.headline')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'newsletter.subscribe.headline', N'Subscribe');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Subscribe' WHERE LanguageId=@En AND ResourceName=N'newsletter.subscribe.headline';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'newsletter.subscribe.headline')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'newsletter.subscribe.headline', N'Đăng ký');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đăng ký' WHERE LanguageId=@Vi AND ResourceName=N'newsletter.subscribe.headline';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'newsletter.subscribe.togetoffers')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'newsletter.subscribe.togetoffers', N'to get offers');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'to get offers' WHERE LanguageId=@En AND ResourceName=N'newsletter.subscribe.togetoffers';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'newsletter.subscribe.togetoffers')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'newsletter.subscribe.togetoffers', N'để nhận ưu đãi');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'để nhận ưu đãi' WHERE LanguageId=@Vi AND ResourceName=N'newsletter.subscribe.togetoffers';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'newsletter.subtitle')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'newsletter.subtitle', N'Subscribe to get special offers and updates');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Subscribe to get special offers and updates' WHERE LanguageId=@En AND ResourceName=N'newsletter.subtitle';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'newsletter.subtitle')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'newsletter.subtitle', N'Đăng ký để nhận ưu đãi và cập nhật đặc biệt');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đăng ký để nhận ưu đãi và cập nhật đặc biệt' WHERE LanguageId=@Vi AND ResourceName=N'newsletter.subtitle';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'order.address.company')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'order.address.company', N'Company:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Company:' WHERE LanguageId=@En AND ResourceName=N'order.address.company';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'order.address.company')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'order.address.company', N'Công ty:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Công ty:' WHERE LanguageId=@Vi AND ResourceName=N'order.address.company';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'order.address.customattributes')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'order.address.customattributes', N'Custom Attributes:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Custom Attributes:' WHERE LanguageId=@En AND ResourceName=N'order.address.customattributes';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'order.address.customattributes')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'order.address.customattributes', N'Thuộc tính tùy chỉnh:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Thuộc tính tùy chỉnh:' WHERE LanguageId=@Vi AND ResourceName=N'order.address.customattributes';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'order.address.name')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'order.address.name', N'Name:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Name:' WHERE LanguageId=@En AND ResourceName=N'order.address.name';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'order.address.name')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'order.address.name', N'Tên:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Tên:' WHERE LanguageId=@Vi AND ResourceName=N'order.address.name';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'ordertotals.total')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'ordertotals.total', N'Total');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Total' WHERE LanguageId=@En AND ResourceName=N'ordertotals.total';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'ordertotals.total')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'ordertotals.total', N'Tổng cộng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Tổng cộng' WHERE LanguageId=@Vi AND ResourceName=N'ordertotals.total';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.brand')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.additionalinfo.brand', N'Brand');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Brand' WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.brand';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.brand')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.additionalinfo.brand', N'Thương hiệu');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Thương hiệu' WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.brand';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.careinfo')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.additionalinfo.careinfo', N'Care Info');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Care Info' WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.careinfo';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.careinfo')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.additionalinfo.careinfo', N'Hướng dẫn bảo quản');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Hướng dẫn bảo quản' WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.careinfo';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.color')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.additionalinfo.color', N'Color');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Color' WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.color';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.color')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.additionalinfo.color', N'Màu sắc');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Màu sắc' WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.color';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.dimensions')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.additionalinfo.dimensions', N'Dimensions');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Dimensions' WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.dimensions';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.dimensions')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.additionalinfo.dimensions', N'Kích thước');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Kích thước' WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.dimensions';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.model')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.additionalinfo.model', N'Model');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Model' WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.model';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.model')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.additionalinfo.model', N'Mẫu');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Mẫu' WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.model';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.product')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.additionalinfo.product', N'Product');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Product' WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.product';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.product')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.additionalinfo.product', N'Sản phẩm');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Sản phẩm' WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.product';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.shipping')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.additionalinfo.shipping', N'Shipping');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Shipping' WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.shipping';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.shipping')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.additionalinfo.shipping', N'Vận chuyển');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Vận chuyển' WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.shipping';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.size')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.additionalinfo.size', N'Size');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Size' WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.size';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.size')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.additionalinfo.size', N'Kích cỡ');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Kích cỡ' WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.size';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.weight')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.additionalinfo.weight', N'Weight');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Weight' WHERE LanguageId=@En AND ResourceName=N'products.additionalinfo.weight';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.weight')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.additionalinfo.weight', N'Cân nặng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Cân nặng' WHERE LanguageId=@Vi AND ResourceName=N'products.additionalinfo.weight';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.brand')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.brand', N'Brand:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Brand:' WHERE LanguageId=@En AND ResourceName=N'products.brand';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.brand')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.brand', N'Thương hiệu:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Thương hiệu:' WHERE LanguageId=@Vi AND ResourceName=N'products.brand';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.breadcrumb.products')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.breadcrumb.products', N'Products');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Products' WHERE LanguageId=@En AND ResourceName=N'products.breadcrumb.products';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.breadcrumb.products')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.breadcrumb.products', N'Sản phẩm');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Sản phẩm' WHERE LanguageId=@Vi AND ResourceName=N'products.breadcrumb.products';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.category')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.category', N'Category:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Category:' WHERE LanguageId=@En AND ResourceName=N'products.category';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.category')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.category', N'Danh mục:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Danh mục:' WHERE LanguageId=@Vi AND ResourceName=N'products.category';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.details')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.details', N'Details');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Details' WHERE LanguageId=@En AND ResourceName=N'products.details';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.details')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.details', N'Chi tiết');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Chi tiết' WHERE LanguageId=@Vi AND ResourceName=N'products.details';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.reviews.excellent')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.reviews.excellent', N'Excellent');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Excellent' WHERE LanguageId=@En AND ResourceName=N'products.reviews.excellent';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.excellent')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.reviews.excellent', N'Xuất sắc');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Xuất sắc' WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.excellent';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.reviews.ratingsandreviews')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.reviews.ratingsandreviews', N'Ratings and Reviews');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Ratings and Reviews' WHERE LanguageId=@En AND ResourceName=N'products.reviews.ratingsandreviews';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.ratingsandreviews')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.reviews.ratingsandreviews', N'Xếp hạng và đánh giá');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Xếp hạng và đánh giá' WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.ratingsandreviews';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.reviews.submitreview')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.reviews.submitreview', N'Submit Review');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Submit Review' WHERE LanguageId=@En AND ResourceName=N'products.reviews.submitreview';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.submitreview')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.reviews.submitreview', N'Gửi đánh giá');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Gửi đánh giá' WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.submitreview';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.reviews.submityourreviews')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.reviews.submityourreviews', N'Submit Your Reviews');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Submit Your Reviews' WHERE LanguageId=@En AND ResourceName=N'products.reviews.submityourreviews';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.submityourreviews')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.reviews.submityourreviews', N'Gửi đánh giá của bạn');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Gửi đánh giá của bạn' WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.submityourreviews';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.reviews.youremail')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.reviews.youremail', N'Your Email*');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Your Email*' WHERE LanguageId=@En AND ResourceName=N'products.reviews.youremail';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.youremail')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.reviews.youremail', N'Email của bạn*');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Email của bạn*' WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.youremail';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.reviews.yourname')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.reviews.yourname', N'Your Name*');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Your Name*' WHERE LanguageId=@En AND ResourceName=N'products.reviews.yourname';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.yourname')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.reviews.yourname', N'Tên của bạn*');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Tên của bạn*' WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.yourname';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.reviews.yourratings')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.reviews.yourratings', N'Your Ratings');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Your Ratings' WHERE LanguageId=@En AND ResourceName=N'products.reviews.yourratings';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.yourratings')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.reviews.yourratings', N'Xếp hạng của bạn');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Xếp hạng của bạn' WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.yourratings';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.reviews.yourreview')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.reviews.yourreview', N'Your review...');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Your review...' WHERE LanguageId=@En AND ResourceName=N'products.reviews.yourreview';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.yourreview')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.reviews.yourreview', N'Đánh giá của bạn...');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đánh giá của bạn...' WHERE LanguageId=@Vi AND ResourceName=N'products.reviews.yourreview';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.sku.label')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.sku.label', N'SKU:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'SKU:' WHERE LanguageId=@En AND ResourceName=N'products.sku.label';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.sku.label')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.sku.label', N'SKU:');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'SKU:' WHERE LanguageId=@Vi AND ResourceName=N'products.sku.label';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.tabs.additionalinformation')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.tabs.additionalinformation', N'Additional Information');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Additional Information' WHERE LanguageId=@En AND ResourceName=N'products.tabs.additionalinformation';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.tabs.additionalinformation')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.tabs.additionalinformation', N'Thông tin thêm');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Thông tin thêm' WHERE LanguageId=@Vi AND ResourceName=N'products.tabs.additionalinformation';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.tabs.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.tabs.description', N'Description');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Description' WHERE LanguageId=@En AND ResourceName=N'products.tabs.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.tabs.description')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.tabs.description', N'Mô tả');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Mô tả' WHERE LanguageId=@Vi AND ResourceName=N'products.tabs.description';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'products.tabs.reviews')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'products.tabs.reviews', N'Reviews');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Reviews' WHERE LanguageId=@En AND ResourceName=N'products.tabs.reviews';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'products.tabs.reviews')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'products.tabs.reviews', N'Đánh giá');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Đánh giá' WHERE LanguageId=@Vi AND ResourceName=N'products.tabs.reviews';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'shoppingcart.carttitle')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'shoppingcart.carttitle', N'Cart');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Cart' WHERE LanguageId=@En AND ResourceName=N'shoppingcart.carttitle';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'shoppingcart.carttitle')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'shoppingcart.carttitle', N'hàng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'hàng' WHERE LanguageId=@Vi AND ResourceName=N'shoppingcart.carttitle';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'shoppingcart.carttotal.cart')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'shoppingcart.carttotal.cart', N'Cart');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Cart' WHERE LanguageId=@En AND ResourceName=N'shoppingcart.carttotal.cart';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'shoppingcart.carttotal.cart')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'shoppingcart.carttotal.cart', N'Giỏ');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giỏ' WHERE LanguageId=@Vi AND ResourceName=N'shoppingcart.carttotal.cart';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'shoppingcart.carttotal.total')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'shoppingcart.carttotal.total', N'Total');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Total' WHERE LanguageId=@En AND ResourceName=N'shoppingcart.carttotal.total';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'shoppingcart.carttotal.total')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'shoppingcart.carttotal.total', N'Tổng');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Tổng' WHERE LanguageId=@Vi AND ResourceName=N'shoppingcart.carttotal.total';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'shoppingcart.freeshippingover')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'shoppingcart.freeshippingover', N'Free Shipping for all orders over {0}');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Free Shipping for all orders over {0}' WHERE LanguageId=@En AND ResourceName=N'shoppingcart.freeshippingover';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'shoppingcart.freeshippingover')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'shoppingcart.freeshippingover', N'Miễn phí vận chuyển cho đơn hàng trên {0}');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Miễn phí vận chuyển cho đơn hàng trên {0}' WHERE LanguageId=@Vi AND ResourceName=N'shoppingcart.freeshippingover';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@En AND ResourceName=N'shoppingcart.your')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@En, N'shoppingcart.your', N'Your');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Your' WHERE LanguageId=@En AND ResourceName=N'shoppingcart.your';

IF NOT EXISTS (SELECT 1 FROM LocaleStringResource WHERE LanguageId=@Vi AND ResourceName=N'shoppingcart.your')
  INSERT INTO LocaleStringResource (LanguageId, ResourceName, ResourceValue) VALUES (@Vi, N'shoppingcart.your', N'Giỏ');
ELSE
  UPDATE LocaleStringResource SET ResourceValue=N'Giỏ' WHERE LanguageId=@Vi AND ResourceName=N'shoppingcart.your';

/* ========== 3) Fix common Vietnamese wording ========== */
UPDATE LocaleStringResource SET ResourceValue=N'Đăng ký' WHERE LanguageId=@Vi AND ResourceName IN (N'account.register', N'account.register.button', N'pagetitle.register', N'menu.register');
UPDATE LocaleStringResource SET ResourceValue=N'Trang chủ' WHERE LanguageId=@Vi AND ResourceName IN (N'categories.breadcrumb.top', N'products.breadcrumb.top', N'forum.home', N'admin.home', N'menu.home');
UPDATE LocaleStringResource SET ResourceValue=N'Đóng' WHERE LanguageId=@Vi AND ResourceName=N'common.close';
UPDATE LocaleStringResource SET ResourceValue=N'Giỏ hàng' WHERE LanguageId=@Vi AND ResourceName IN (N'checkout.progress.cart', N'shoppingcart', N'menu.cart', N'pagetitle.shoppingcart');
UPDATE LocaleStringResource SET ResourceValue=N'Đi tới giỏ hàng' WHERE LanguageId=@Vi AND ResourceName=N'shoppingcart.mini.viewcart';
UPDATE LocaleStringResource SET ResourceValue=N'Đăng ký' WHERE LanguageId=@Vi AND ResourceValue=N'Ghi danh';
UPDATE LocaleStringResource SET ResourceValue=N'Trang chủ' WHERE LanguageId=@Vi AND ResourceValue=N'Nhà';

/* ========== 4) Currency VND rate + formatting ========== */
UPDATE Currency
SET Rate = 25825.0000,
    Name = N'Vietnamese Dong',
    DisplayLocale = N'vi-VN',
    CustomFormatting = N'#,##0 ₫',
    Published = 1,
    UpdatedOnUtc = GETUTCDATE()
WHERE CurrencyCode = N'VND';

IF NOT EXISTS (SELECT 1 FROM Currency WHERE CurrencyCode = N'VND')
BEGIN
  INSERT INTO Currency (Name, CurrencyCode, Rate, DisplayLocale, CustomFormatting, LimitedToStores, Published, DisplayOrder, CreatedOnUtc, UpdatedOnUtc, RoundingTypeId)
  VALUES (N'Vietnamese Dong', N'VND', 25825.0000, N'vi-VN', N'#,##0 ₫', 0, 1, 0, GETUTCDATE(), GETUTCDATE(), 0);
END

DECLARE @Usd INT = (SELECT TOP 1 Id FROM Currency WHERE CurrencyCode=N'USD');
DECLARE @Vnd INT = (SELECT TOP 1 Id FROM Currency WHERE CurrencyCode=N'VND');
IF @Usd IS NULL THROW 50002, 'USD currency not found.', 1;
IF @Vnd IS NULL THROW 50003, 'VND currency not found.', 1;

/* ========== 5) Language default currency + store default language ========== */
UPDATE [Language] SET DefaultCurrencyId = @Usd, DisplayOrder = 2 WHERE Id = @En;
UPDATE [Language] SET DefaultCurrencyId = @Vnd, DisplayOrder = 1 WHERE Id = @Vi;
UPDATE Store SET DefaultLanguageId = @Vi WHERE Id = (SELECT TOP 1 Id FROM Store ORDER BY Id);

COMMIT;
PRINT 'Patch completed successfully.';
PRINT 'Clear nopCommerce cache after applying (Admin > System > Clear cache).';
