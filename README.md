# mysqlj
Utility to extend mysql command line to output JSON


mysql  -uUSER_NAME -pPASSWROD  -h DB_HOST -e "SELECT countryCode,countryName,currencyCode FROM cloudvpn.countries; "
+-------------+----------------------+--------------+
| countryCode | countryName          | currencyCode |
+-------------+----------------------+--------------+
| AD          | Andorra              | EUR          |
| AE          | United Arab Emirates | AED          |
| AF          | Afghanistan          | AFN          |
| AG          | Antigua and Barbuda  | XCD          |
| AI          | Anguilla             | XCD          |
| AL          | Albania              | ALL          |
| AM          | Armenia              | AMD          |
| AO          | Angola               | AOA          |
| AQ          | Antarctica           |              |
| AR          | Argentina            | ARS          |
+-------------+----------------------+--------------+



./mysqlj.sh  -u<user> -p<password> -h <host.domain.com> -e "SELECT countryCode,countryName,currencyCode FROM cloudvpn.countries; "
```javascript
[
{"countryCode":"AD","countryName":"Andorra","currencyCode":"EUR"}
,{"countryCode":"AE","countryName":"United Arab Emirates","currencyCode":"AED"}
,{"countryCode":"AF","countryName":"Afghanistan","currencyCode":"AFN"}
,{"countryCode":"AG","countryName":"Antigua and Barbuda","currencyCode":"XCD"}
,{"countryCode":"AI","countryName":"Anguilla","currencyCode":"XCD"}
,{"countryCode":"AL","countryName":"Albania","currencyCode":"ALL"}
,{"countryCode":"AM","countryName":"Armenia","currencyCode":"AMD"}
,{"countryCode":"AO","countryName":"Angola","currencyCode":"AOA"}
,{"countryCode":"AQ","countryName":"Antarctica","currencyCode":""}
,{"countryCode":"AR","countryName":"Argentina","currencyCode":"ARS"}
]
```
