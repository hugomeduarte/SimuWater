package pt.iade.simuwater.models;

import java.io.Serializable;

public class RegistryId implements Serializable {
    private static final long serialVersionUID = 3103463164387407729L;
    private int userId;
    private int residenceId;
    private int activitiesId;
    
    public RegistryId(){}
    @Override
    public boolean equals(Object obj) { return obj!=null &&
    obj.getClass() == RegistryId.class && ((RegistryId)obj).userId == userId && ((RegistryId)obj).residenceId == residenceId && ((RegistryId)obj).activitiesId == activitiesId;
    }
}
