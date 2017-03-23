<%--
 BKWI Custom SAML Error Page
 Last changed: 16-03-2017 by: Frank Peeters
--%>
<%--
   This is the default error display page.
   There are three parameters passed down to this URL:
     1. errorcode : Error code, this is the I18n key of the error message.
     2. httpstatuscode : Http status code
     3. errormessage : More detailed I18n'd error message  
   Here is a list of error codes (from locale files):
     * nullSPEntityID
     * nullIDPEntityID
     * idpNotFound
     * requestProcessingError
     * failedToProcessSSOResponse
     * nullInput 
     * requestProcessingMNIError
     * nullRequestType 
     * nullSSOToken
     * LogoutRequestProcessingError
     * LogoutResponseProcessingError
     * largeContentLength
     * errorMetaManager
     * metaDataError
     * nullSessionProvider
     * SSOFailed
     * LogoutRequestCreationError
     * nullAssertionID
     * failedToGetAssertionIDRequestMapper
     * failedToAuthenticateRequesterURI
     * invalidAssertionID
     * invalidAssertion 
     * unsupportedEncoding 
     * MissingSAMLRequest
     * nullDecodedStrFromSamlResponse
     * nullIDPMetaAlias
     * metaDataError
     * invalidSOAPMessage
     * unableToCreateArtifactResponse
     * LogoutRequestCreationError
     * UnableToRedirectToAuth
     * errorCreateArtifact
     * failedToSendECPResponse 
     * notSupportedHTTPMethod
     * missingArtifact
     * errorObtainArtifact
     * failedToGetIDPSSODescriptor 
     * errorCreateArtifactResolve
     * errorInSOAPCommunication
     * invalidIDP
     * cannotFindArtifactResolutionUrl
     * soapError
     * failedToCreateArtifactResponse
     * missingArtifactResponse
     * invalidSignature
     * invalidInResponseTo 
     * invalidIssuer
     * invalidStatusCode
     * failedToCreateSOAPMessage
     * failedToCreateResponse
     * assertionNotSigned
     * missingSAMLResponse
     * errorObtainResponse
     * errorDecodeResponse
     * invalidHttpRequestFromECP
     * failedToProcessQueryRequest
     * failedToCreateAssertionIDRequest
     * nullPathInfo 
     * invalidMetaAlias 
     * failedToCreateAttributeQuery 
     * failedToCreateAuthnQuery 
     * nameIDMappingFailed
     * failedToInitECPRequest
     * singleLogoutFailed 
     * nullRequestUri
     * invalidRequestUri
     * noRedirectionURL
     * readerServiceFailed
     * nullSessionIndex
     * nullNameID
     Here is the list of error codes for SAML v1.x:
     * untrustedSite
     * nullInputParameter
     * invalidConfig
     * missingTargetHost
     * nullTrustedSite
     * errorCreateArtifact
     * targetForbidden
     * failedCreateSSOToken
     * missingTargetSite
     * couldNotCreateResponse
     * errorSigningResponse
     * errorEncodeResponse
     * missingSAMLResponse
     * errorDecodeResponse
     * errorObtainResponse
     * invalidResponse
 
--%><%@ page language="java" 
        import="com.sun.identity.saml.common.SAMLConstants,                
                com.sun.identity.saml2.common.SAML2Utils"
%><%
    String errorCode = request.getParameter(SAMLConstants.ERROR_CODE);
    String httpStatusCode = 
        request.getParameter(SAMLConstants.HTTP_STATUS_CODE);
    String errorMessage = request.getParameter(SAMLConstants.ERROR_MESSAGE);
    if (((errorMessage == null) || (errorMessage.length() == 0)) &&
        (errorCode != null)) {
        errorMessage = SAML2Utils.bundle.getString(errorCode);
    }
    int sc = HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
    if (httpStatusCode != null) {
        try {
            sc = Integer.parseInt(httpStatusCode);
        } catch (NumberFormatException nfe) { 
            // ignore
        }
    }
%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>BKWI Federation Services (Federation Error)</title>        
			<link rel="stylesheet" href="/<nogtebepalen>/layout.css" type="text/css">
        </head>
        <body>
			<div class="container">
				<div class="bkwi_image"></div>
				<div class="main_container">
					<div class="topbar" id="header">
						<table width="1004" border="0" cellspacing="0" cellpadding="0">
							<tbody>
								</tr>
								<tr>
								</tr>
							</tbody>
						</table>
						<div  class="titletext" >
						<span  id="pagetitle" >BKWI Federation Services</span>
						</div>
					</div>
					<div class="mainContentArea"> 
							<div class="columns-3" id="content-wrapper"> 
								<table class="lfr-grid" id="layout-grid"> 
									<tr>
										<td nowrap="nowrap"></td>
										<td>
										<div class="logTxtSvrNam">   								
											<span class="icon error"></span>
											<h3 >Unable to process SAML Federation request</h3><br><br>
											<b >Http status code:</b >&#09;<% out.print(httpStatusCode);  %><br>
											<b >Error Type:</b >&#09;<% out.print(errorCode);  %><br>
											<b >Error Message:</b >&#09;<% out.print(errorMessage);  %><br><br><br>
											<p>Try to initiate the login sequence again or contact Suwidesk for help.</p>
											<p><a href="https://suwi-inkijk.dev.suwinet.nl">Return to Suwinet Main page</a></p>
																		
										</div>
											</td>
										</tr>
									</table>
                            </div>
                        </div>
						<div class="footerMenu" > 
                        <table border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td style="PADDING-LEFT: 10px; PADDING-TOP: 0px" valign="top">
                                        <table id="Table_footer" border="0" cellspacing="0" cellpadding="0">
                           </tbold> </table>
							<BR>
							<BR>
						</div> 
					</div>
			</div>
        </body>
</html>
