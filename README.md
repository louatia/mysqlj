# mysqlj
Utility to extend mysql command line to output JSON


mysql  -uUSER -pPASSWROD  -h DBHOST -e "SELECT countryCode,countryName,currencyCode FROM db.countries; "

| countryCode | countryName          | currencyCode |
| ----------- | -------------------- | ------------ |
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




./mysqlj  -uUSER-pPASSWROD  -h DBHOST -e "SELECT countryCode,countryName,currencyCode FROM db.countries; "
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
