/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package elastica.testtool.datasource;

import java.util.List;

/**
 *
 * @author rkumar3
 */
public class TestCases {
    
    Owner owner;
    String testCaseName;
    String creationdate;
    List<String> testScenario;
    String modifieddate;
    
    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }

    public String getTestCaseName() {
        return testCaseName;
    }

    public void setTestCaseName(String testCaseName) {
        this.testCaseName = testCaseName;
    }

    public String getCreationdate() {
        return creationdate;
    }

    public void setCreationdate(String creationdate) {
        this.creationdate = creationdate;
    }

    public List<String> getTestScenario() {
        return testScenario;
    }

    public void setTestScenario(List<String> testScenario) {
        this.testScenario = testScenario;
    }

    public String getModifieddate() {
        return modifieddate;
    }

    public void setModifieddate(String modifieddate) {
        this.modifieddate = modifieddate;
    }
    
    
}
