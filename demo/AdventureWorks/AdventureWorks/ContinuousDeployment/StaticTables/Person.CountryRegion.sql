﻿SET NOCOUNT ON

MERGE INTO [Person].[CountryRegion] AS Target
USING (VALUES
  (N'AD',N'Andorra','2008-04-30T00:00:00')
 ,(N'AE',N'United Arab Emirates','2008-04-30T00:00:00')
 ,(N'AF',N'Afghanistan','2008-04-30T00:00:00')
 ,(N'AG',N'Antigua and Barbuda','2008-04-30T00:00:00')
 ,(N'AI',N'Anguilla','2008-04-30T00:00:00')
 ,(N'AL',N'Albania','2008-04-30T00:00:00')
 ,(N'AM',N'Armenia','2008-04-30T00:00:00')
 ,(N'AN',N'Netherlands Antilles','2008-04-30T00:00:00')
 ,(N'AO',N'Angola','2008-04-30T00:00:00')
 ,(N'AQ',N'Antarctica','2008-04-30T00:00:00')
 ,(N'AR',N'Argentina','2008-04-30T00:00:00')
 ,(N'AS',N'American Samoa','2008-04-30T00:00:00')
 ,(N'AT',N'Austria','2008-04-30T00:00:00')
 ,(N'AU',N'Australia','2008-04-30T00:00:00')
 ,(N'AW',N'Aruba','2008-04-30T00:00:00')
 ,(N'AZ',N'Azerbaijan','2008-04-30T00:00:00')
 ,(N'BA',N'Bosnia and Herzegovina','2008-04-30T00:00:00')
 ,(N'BB',N'Barbados','2008-04-30T00:00:00')
 ,(N'BD',N'Bangladesh','2008-04-30T00:00:00')
 ,(N'BE',N'Belgium','2008-04-30T00:00:00')
 ,(N'BF',N'Burkina Faso','2008-04-30T00:00:00')
 ,(N'BG',N'Bulgaria','2008-04-30T00:00:00')
 ,(N'BH',N'Bahrain','2008-04-30T00:00:00')
 ,(N'BI',N'Burundi','2008-04-30T00:00:00')
 ,(N'BJ',N'Benin','2008-04-30T00:00:00')
 ,(N'BM',N'Bermuda','2008-04-30T00:00:00')
 ,(N'BN',N'Brunei','2008-04-30T00:00:00')
 ,(N'BO',N'Bolivia','2008-04-30T00:00:00')
 ,(N'BR',N'Brazil','2008-04-30T00:00:00')
 ,(N'BS',N'Bahamas, The','2008-04-30T00:00:00')
 ,(N'BT',N'Bhutan','2008-04-30T00:00:00')
 ,(N'BV',N'Bouvet Island','2008-04-30T00:00:00')
 ,(N'BW',N'Botswana','2008-04-30T00:00:00')
 ,(N'BY',N'Belarus','2008-04-30T00:00:00')
 ,(N'BZ',N'Belize','2008-04-30T00:00:00')
 ,(N'CA',N'Canada','2008-04-30T00:00:00')
 ,(N'CC',N'Cocos (Keeling) Islands','2008-04-30T00:00:00')
 ,(N'CD',N'Congo (DRC)','2008-04-30T00:00:00')
 ,(N'CF',N'Central African Republic','2008-04-30T00:00:00')
 ,(N'CG',N'Congo','2008-04-30T00:00:00')
 ,(N'CH',N'Switzerland','2008-04-30T00:00:00')
 ,(N'CI',N'Côte d''Ivoire','2008-04-30T00:00:00')
 ,(N'CK',N'Cook Islands','2008-04-30T00:00:00')
 ,(N'CL',N'Chile','2008-04-30T00:00:00')
 ,(N'CM',N'Cameroon','2008-04-30T00:00:00')
 ,(N'CN',N'China','2008-04-30T00:00:00')
 ,(N'CO',N'Colombia','2008-04-30T00:00:00')
 ,(N'CR',N'Costa Rica','2008-04-30T00:00:00')
 ,(N'CS',N'Serbia and Montenegro','2008-04-30T00:00:00')
 ,(N'CU',N'Cuba','2008-04-30T00:00:00')
 ,(N'CV',N'Cape Verde','2008-04-30T00:00:00')
 ,(N'CX',N'Christmas Island','2008-04-30T00:00:00')
 ,(N'CY',N'Cyprus','2008-04-30T00:00:00')
 ,(N'CZ',N'Czech Republic','2008-04-30T00:00:00')
 ,(N'DE',N'Germany','2008-04-30T00:00:00')
 ,(N'DJ',N'Djibouti','2008-04-30T00:00:00')
 ,(N'DK',N'Denmark','2008-04-30T00:00:00')
 ,(N'DM',N'Dominica','2008-04-30T00:00:00')
 ,(N'DO',N'Dominican Republic','2008-04-30T00:00:00')
 ,(N'DZ',N'Algeria','2008-04-30T00:00:00')
 ,(N'EC',N'Ecuador','2008-04-30T00:00:00')
 ,(N'EE',N'Estonia','2008-04-30T00:00:00')
 ,(N'EG',N'Egypt','2008-04-30T00:00:00')
 ,(N'ER',N'Eritrea','2008-04-30T00:00:00')
 ,(N'ES',N'Spain','2008-04-30T00:00:00')
 ,(N'ET',N'Ethiopia','2008-04-30T00:00:00')
 ,(N'FI',N'Finland','2008-04-30T00:00:00')
 ,(N'FJ',N'Fiji Islands','2008-04-30T00:00:00')
 ,(N'FK',N'Falkland Islands (Islas Malvinas)','2008-04-30T00:00:00')
 ,(N'FM',N'Micronesia','2008-04-30T00:00:00')
 ,(N'FO',N'Faroe Islands','2008-04-30T00:00:00')
 ,(N'FR',N'France','2008-04-30T00:00:00')
 ,(N'GA',N'Gabon','2008-04-30T00:00:00')
 ,(N'GB',N'United Kingdom','2008-04-30T00:00:00')
 ,(N'GD',N'Grenada','2008-04-30T00:00:00')
 ,(N'GE',N'Georgia','2008-04-30T00:00:00')
 ,(N'GF',N'French Guiana','2008-04-30T00:00:00')
 ,(N'GH',N'Ghana','2008-04-30T00:00:00')
 ,(N'GI',N'Gibraltar','2008-04-30T00:00:00')
 ,(N'GL',N'Greenland','2008-04-30T00:00:00')
 ,(N'GM',N'Gambia, The','2008-04-30T00:00:00')
 ,(N'GN',N'Guinea','2008-04-30T00:00:00')
 ,(N'GP',N'Guadeloupe','2008-04-30T00:00:00')
 ,(N'GQ',N'Equatorial Guinea','2008-04-30T00:00:00')
 ,(N'GR',N'Greece','2008-04-30T00:00:00')
 ,(N'GS',N'South Georgia and the South Sandwich Islands','2008-04-30T00:00:00')
 ,(N'GT',N'Guatemala','2008-04-30T00:00:00')
 ,(N'GU',N'Guam','2008-04-30T00:00:00')
 ,(N'GW',N'Guinea-Bissau','2008-04-30T00:00:00')
 ,(N'GY',N'Guyana','2008-04-30T00:00:00')
 ,(N'HK',N'Hong Kong SAR','2008-04-30T00:00:00')
 ,(N'HM',N'Heard Island and McDonald Islands','2008-04-30T00:00:00')
 ,(N'HN',N'Honduras','2008-04-30T00:00:00')
 ,(N'HR',N'Croatia','2008-04-30T00:00:00')
 ,(N'HT',N'Haiti','2008-04-30T00:00:00')
 ,(N'HU',N'Hungary','2008-04-30T00:00:00')
 ,(N'ID',N'Indonesia','2008-04-30T00:00:00')
 ,(N'IE',N'Ireland','2008-04-30T00:00:00')
 ,(N'IL',N'Israel','2008-04-30T00:00:00')
 ,(N'IN',N'India','2008-04-30T00:00:00')
 ,(N'IO',N'British Indian Ocean Territory','2008-04-30T00:00:00')
 ,(N'IQ',N'Iraq','2008-04-30T00:00:00')
 ,(N'IR',N'Iran','2008-04-30T00:00:00')
 ,(N'IS',N'Iceland','2008-04-30T00:00:00')
 ,(N'IT',N'Italy','2008-04-30T00:00:00')
 ,(N'JM',N'Jamaica','2008-04-30T00:00:00')
 ,(N'JO',N'Jordan','2008-04-30T00:00:00')
 ,(N'JP',N'Japan','2008-04-30T00:00:00')
 ,(N'KE',N'Kenya','2008-04-30T00:00:00')
 ,(N'KG',N'Kyrgyzstan','2008-04-30T00:00:00')
 ,(N'KH',N'Cambodia','2008-04-30T00:00:00')
 ,(N'KI',N'Kiribati','2008-04-30T00:00:00')
 ,(N'KM',N'Comoros','2008-04-30T00:00:00')
 ,(N'KN',N'Saint Kitts and Nevis','2008-04-30T00:00:00')
 ,(N'KP',N'North Korea','2008-04-30T00:00:00')
 ,(N'KR',N'Korea','2008-04-30T00:00:00')
 ,(N'KW',N'Kuwait','2008-04-30T00:00:00')
 ,(N'KY',N'Cayman Islands','2008-04-30T00:00:00')
 ,(N'KZ',N'Kazakhstan','2008-04-30T00:00:00')
 ,(N'LA',N'Laos','2008-04-30T00:00:00')
 ,(N'LB',N'Lebanon','2008-04-30T00:00:00')
 ,(N'LC',N'Saint Lucia','2008-04-30T00:00:00')
 ,(N'LI',N'Liechtenstein','2008-04-30T00:00:00')
 ,(N'LK',N'Sri Lanka','2008-04-30T00:00:00')
 ,(N'LR',N'Liberia','2008-04-30T00:00:00')
 ,(N'LS',N'Lesotho','2008-04-30T00:00:00')
 ,(N'LT',N'Lithuania','2008-04-30T00:00:00')
 ,(N'LU',N'Luxembourg','2008-04-30T00:00:00')
 ,(N'LV',N'Latvia','2008-04-30T00:00:00')
 ,(N'LY',N'Libya','2008-04-30T00:00:00')
 ,(N'MA',N'Morocco','2008-04-30T00:00:00')
 ,(N'MC',N'Monaco','2008-04-30T00:00:00')
 ,(N'MD',N'Moldova','2008-04-30T00:00:00')
 ,(N'MG',N'Madagascar','2008-04-30T00:00:00')
 ,(N'MH',N'Marshall Islands','2008-04-30T00:00:00')
 ,(N'MK',N'Macedonia, Former Yugoslav Republic of','2008-04-30T00:00:00')
 ,(N'ML',N'Mali','2008-04-30T00:00:00')
 ,(N'MM',N'Myanmar','2008-04-30T00:00:00')
 ,(N'MN',N'Mongolia','2008-04-30T00:00:00')
 ,(N'MO',N'Macao SAR','2008-04-30T00:00:00')
 ,(N'MP',N'Northern Mariana Islands','2008-04-30T00:00:00')
 ,(N'MQ',N'Martinique','2008-04-30T00:00:00')
 ,(N'MR',N'Mauritania','2008-04-30T00:00:00')
 ,(N'MS',N'Montserrat','2008-04-30T00:00:00')
 ,(N'MT',N'Malta','2008-04-30T00:00:00')
 ,(N'MU',N'Mauritius','2008-04-30T00:00:00')
 ,(N'MV',N'Maldives','2008-04-30T00:00:00')
 ,(N'MW',N'Malawi','2008-04-30T00:00:00')
 ,(N'MX',N'Mexico','2008-04-30T00:00:00')
 ,(N'MY',N'Malaysia','2008-04-30T00:00:00')
 ,(N'MZ',N'Mozambique','2008-04-30T00:00:00')
 ,(N'NA',N'Namibia','2008-04-30T00:00:00')
 ,(N'NC',N'New Caledonia','2008-04-30T00:00:00')
 ,(N'NE',N'Niger','2008-04-30T00:00:00')
 ,(N'NF',N'Norfolk Island','2008-04-30T00:00:00')
 ,(N'NG',N'Nigeria','2008-04-30T00:00:00')
 ,(N'NI',N'Nicaragua','2008-04-30T00:00:00')
 ,(N'NL',N'Netherlands','2008-04-30T00:00:00')
 ,(N'NO',N'Norway','2008-04-30T00:00:00')
 ,(N'NP',N'Nepal','2008-04-30T00:00:00')
 ,(N'NR',N'Nauru','2008-04-30T00:00:00')
 ,(N'NU',N'Niue','2008-04-30T00:00:00')
 ,(N'NZ',N'New Zealand','2008-04-30T00:00:00')
 ,(N'OM',N'Oman','2008-04-30T00:00:00')
 ,(N'PA',N'Panama','2008-04-30T00:00:00')
 ,(N'PE',N'Peru','2008-04-30T00:00:00')
 ,(N'PF',N'French Polynesia','2008-04-30T00:00:00')
 ,(N'PG',N'Papua New Guinea','2008-04-30T00:00:00')
 ,(N'PH',N'Philippines','2008-04-30T00:00:00')
 ,(N'PK',N'Pakistan','2008-04-30T00:00:00')
 ,(N'PL',N'Poland','2008-04-30T00:00:00')
 ,(N'PM',N'Saint Pierre and Miquelon','2008-04-30T00:00:00')
 ,(N'PN',N'Pitcairn Islands','2008-04-30T00:00:00')
 ,(N'PR',N'Puerto Rico','2008-04-30T00:00:00')
 ,(N'PS',N'Palestinian Authority','2008-04-30T00:00:00')
 ,(N'PT',N'Portugal','2008-04-30T00:00:00')
 ,(N'PW',N'Palau','2008-04-30T00:00:00')
 ,(N'PY',N'Paraguay','2008-04-30T00:00:00')
 ,(N'QA',N'Qatar','2008-04-30T00:00:00')
 ,(N'RE',N'Réunion','2008-04-30T00:00:00')
 ,(N'RO',N'Romania','2008-04-30T00:00:00')
 ,(N'RU',N'Russia','2008-04-30T00:00:00')
 ,(N'RW',N'Rwanda','2008-04-30T00:00:00')
 ,(N'SA',N'Saudi Arabia','2008-04-30T00:00:00')
 ,(N'SB',N'Solomon Islands','2008-04-30T00:00:00')
 ,(N'SC',N'Seychelles','2008-04-30T00:00:00')
 ,(N'SD',N'Sudan','2008-04-30T00:00:00')
 ,(N'SE',N'Sweden','2008-04-30T00:00:00')
 ,(N'SG',N'Singapore','2008-04-30T00:00:00')
 ,(N'SH',N'Saint Helena','2008-04-30T00:00:00')
 ,(N'SI',N'Slovenia','2008-04-30T00:00:00')
 ,(N'SJ',N'Svalbard and Jan Mayen','2008-04-30T00:00:00')
 ,(N'SK',N'Slovakia','2008-04-30T00:00:00')
 ,(N'SL',N'Sierra Leone','2008-04-30T00:00:00')
 ,(N'SM',N'San Marino','2008-04-30T00:00:00')
 ,(N'SN',N'Senegal','2008-04-30T00:00:00')
 ,(N'SO',N'Somalia','2008-04-30T00:00:00')
 ,(N'SR',N'Suriname','2008-04-30T00:00:00')
 ,(N'ST',N'São Tomé and Príncipe','2008-04-30T00:00:00')
 ,(N'SV',N'El Salvador','2008-04-30T00:00:00')
 ,(N'SY',N'Syria','2008-04-30T00:00:00')
 ,(N'SZ',N'Swaziland','2008-04-30T00:00:00')
 ,(N'TC',N'Turks and Caicos Islands','2008-04-30T00:00:00')
 ,(N'TD',N'Chad','2008-04-30T00:00:00')
 ,(N'TF',N'French Southern and Antarctic Lands','2008-04-30T00:00:00')
 ,(N'TG',N'Togo','2008-04-30T00:00:00')
 ,(N'TH',N'Thailand','2008-04-30T00:00:00')
 ,(N'TJ',N'Tajikistan','2008-04-30T00:00:00')
 ,(N'TK',N'Tokelau','2008-04-30T00:00:00')
 ,(N'TL',N'Timor-Leste','2008-04-30T00:00:00')
 ,(N'TM',N'Turkmenistan','2008-04-30T00:00:00')
 ,(N'TN',N'Tunisia','2008-04-30T00:00:00')
 ,(N'TO',N'Tonga','2008-04-30T00:00:00')
 ,(N'TR',N'Turkey','2008-04-30T00:00:00')
 ,(N'TT',N'Trinidad and Tobago','2008-04-30T00:00:00')
 ,(N'TV',N'Tuvalu','2008-04-30T00:00:00')
 ,(N'TW',N'Taiwan','2008-04-30T00:00:00')
 ,(N'TZ',N'Tanzania','2008-04-30T00:00:00')
 ,(N'UA',N'Ukraine','2008-04-30T00:00:00')
 ,(N'UG',N'Uganda','2008-04-30T00:00:00')
 ,(N'UM',N'U.S. Minor Outlying Islands','2008-04-30T00:00:00')
 ,(N'US',N'United States','2008-04-30T00:00:00')
 ,(N'UY',N'Uruguay','2008-04-30T00:00:00')
 ,(N'UZ',N'Uzbekistan','2008-04-30T00:00:00')
 ,(N'VA',N'Vatican City','2008-04-30T00:00:00')
 ,(N'VC',N'Saint Vincent and the Grenadine','2008-04-30T00:00:00')
 ,(N'VE',N'Venezuela','2008-04-30T00:00:00')
 ,(N'VG',N'Virgin Islands, British','2008-04-30T00:00:00')
 ,(N'VI',N'Virgin Islands, U.S.','2008-04-30T00:00:00')
 ,(N'VN',N'Vietnam','2008-04-30T00:00:00')
 ,(N'VU',N'Vanuatu','2008-04-30T00:00:00')
 ,(N'WF',N'Wallis and Futuna','2008-04-30T00:00:00')
 ,(N'WS',N'Samoa','2008-04-30T00:00:00')
 ,(N'YE',N'Yemen','2008-04-30T00:00:00')
 ,(N'YT',N'Mayotte','2008-04-30T00:00:00')
 ,(N'ZA',N'South Africa','2008-04-30T00:00:00')
 ,(N'ZM',N'Zambia','2008-04-30T00:00:00')
 ,(N'ZW',N'Zimbabwe','2008-04-30T00:00:00')
) AS Source ([CountryRegionCode],[Name],[ModifiedDate])
ON (Target.[CountryRegionCode] = Source.[CountryRegionCode])
WHEN MATCHED AND (
	NULLIF(Source.[Name], Target.[Name]) IS NOT NULL OR NULLIF(Target.[Name], Source.[Name]) IS NOT NULL OR 
	NULLIF(Source.[ModifiedDate], Target.[ModifiedDate]) IS NOT NULL OR NULLIF(Target.[ModifiedDate], Source.[ModifiedDate]) IS NOT NULL) THEN
 UPDATE SET
  [Name] = Source.[Name], 
  [ModifiedDate] = Source.[ModifiedDate]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([CountryRegionCode],[Name],[ModifiedDate])
 VALUES(Source.[CountryRegionCode],Source.[Name],Source.[ModifiedDate])
WHEN NOT MATCHED BY SOURCE THEN 
 DELETE
;
GO
DECLARE @mergeError int
 , @mergeCount int
SELECT @mergeError = @@ERROR, @mergeCount = @@ROWCOUNT
IF @mergeError != 0
 BEGIN
 PRINT 'ERROR OCCURRED IN MERGE FOR [Person].[CountryRegion]. Rows affected: ' + CAST(@mergeCount AS VARCHAR(100)); -- SQL should always return zero rows affected
 END
ELSE
 BEGIN
 PRINT '[Person].[CountryRegion] rows affected by MERGE: ' + CAST(@mergeCount AS VARCHAR(100));
 END
GO

SET NOCOUNT OFF
GO