package io.swagger.codegen;

import io.swagger.models.ExternalDocs;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class CodegenModel {
    public String parent;
    public String name, classname, description, classVarName, modelJson, dataType;
    public String unescapedDescription;
    public String defaultValue;
    public List<CodegenProperty> vars = new ArrayList<CodegenProperty>();
    public List<String> allowableValues;

    // list of all required parameters
    public Set<String> mandatory = new HashSet<String>();
    
    public Set<String> imports = new HashSet<String>();
    public Boolean hasVars, emptyVars, hasMoreModels, hasEnums, isEnum;
    public ExternalDocs externalDocs;
}
