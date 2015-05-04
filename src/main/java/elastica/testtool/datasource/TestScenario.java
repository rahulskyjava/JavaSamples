/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package elastica.testtool.datasource;

/**
 *
 * @author rkumar3
 */
public class TestScenario {
    
    String testScenarioName;

    public String getTestScenarioName() {
        return testScenarioName;
    }

    public void setTestScenarioName(String testScenarioName) {
        this.testScenarioName = testScenarioName;
    }

    public String getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String creationDate) {
        this.creationDate = creationDate;
    }

    public String getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(String lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    public String getRestCallType() {
        return restCallType;
    }

    public void setRestCallType(String restCallType) {
        this.restCallType = restCallType;
    }

    public String getRestUrl() {
        return restUrl;
    }

    public void setRestUrl(String restUrl) {
        this.restUrl = restUrl;
    }
    String creationDate;
    String lastModifiedDate;
    String restCallType;
    String restUrl;
    
    
}
