*** Variables ***
${GET_URL}       https://www.advantageonlineshopping.com/
${CREATE_ACCOUNT}     accountservice/accountrest/api/v1/register
${LOGIN_API}     accountservice/accountrest/api/v1/login
${ADD_IMAGE}    catalog/api/v1/product/image/414599583/WEB/gray?product_id=16
${TOKEN}    eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ3d3cuYWR2YW50YWdlb25saW5lc2hvcHBpbmcuY29tIiwidXNlcklkIjo0MTQ1OTk1ODMsInN1YiI6IlRlc3RRYTEyMyIsInJvbGUiOiJBRE1JTiJ9.gFkBQP2pCp5_xSI6QTV3yoWqVtpEFtVohyJBQIIg2xs
${IMAGE_PATH}   ../desafio_automacao/Ipad pro.jpeg
${PRODUCT_ID}   id:16