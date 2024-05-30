import ballerina/test;
import ballerina/io;

@test:Config {}
isolated function testGetEmployee() returns error? {
    io:println("Test");
    Client testClient = check new({auth: {username: "", password: ""}}, "https://ustest241-services.dayforcehcm.com/Api");

    // https://ustest241-services.dayforcehcm.com/Api/ddn/V1/Employees/42199
    // https://test.dayforcehcm.com/api/CompanyName/V1/Employees
    Payload_Employee employee = check testClient->/ddn/V1/Employees/'42199;
    // PaginatedPayload_IEnumerable_Employee albums2 = check testClient->/ddn/v1/EmployeeExportJobs/Data/["12810"];
    // io:println(employee);
    // json readJson = check io:fileReadJson(jsonFilePath);
}
