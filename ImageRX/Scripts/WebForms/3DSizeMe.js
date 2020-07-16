function launch3DsizeME() {
    var encodedData = btoa(
                    '{\
                 "Token": "JWT 3232322323211",\
                 "URL": "https://imagerx.azurewebsites.net/Images/",\
                 "FirstName": "Test",\
                 "LastName": "Patient",\
                 "Email": "test.patient@mail.com",\
                 "PatientId": "12343",\
                 "Gender": "Male",\
                 "returnURL": "https://imagerx.azurewebsites.net/fileuploads",\
                 "httpHeaderFieldParameters": {\
                 "x-api-key": "04f495432311aae2ec962370e25"\
                 },\
                 "bodyParameters": {\
                 "myBodyParameters": {\
                 "param1": "bodyParamValue1",\
                "param2": "bodyParamValue2"\
                 }\
                 }\
                 }');

    location = 'tm3d-in-3dsizeme://' + encodedData;

}