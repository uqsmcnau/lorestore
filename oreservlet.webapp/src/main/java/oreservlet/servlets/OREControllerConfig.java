package oreservlet.servlets;


public class OREControllerConfig {

	private OREAccessPolicy accessPolicy;
	private TripleStoreConnectorFactory cf;
	private String baseUri;
	

	public void setAccessPolicy(OREAccessPolicy accessPolicy) {
		this.accessPolicy = accessPolicy;
	}
	
	public OREAccessPolicy getAccessPolicy() {
		return accessPolicy;
		
	}

	public void setContainerFactory(TripleStoreConnectorFactory cf) {
		this.cf = cf;
	}

	public TripleStoreConnectorFactory getContainerFactory() {
		return cf;
	}

	public String getBaseUri() {
		return this.baseUri;
	}

	public void setBaseUri(String baseUri) {
		this.baseUri = baseUri;
	}
	
	

}
