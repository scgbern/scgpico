---
Title: Rule Specification
---
#Rule Specification
**case study C1 **


```
ServicePackage = Package with name:"[omissis].*service.*", name!:"[omissis].*persistence*"
PersistencePackage = Package with name:"[omissis].*persistence.*", name!:"[omissis].*service*"
ImplClass = Class with name:"*Impl"

SYSTEM cannot contain cycles
PersistencePackage cannot depend on ServicePackage
ImplClass must have annotation "@[omissis]Service"
```


**case study C2 **

```
CoreProject = Package with name:"[omissis].core.**"
StammdatenProject = Package with name:"[omissis].stammdaten.**"
AngebotProject = Package with name:"[omissis].angebot.**"
BetriebProject = Package with name:"[omissis].betrieb.**"
FosProject = Package with name:"[omissis].fos.**"
LoppisProject = Package with name:"[omissis].loppis.**"
ClientScoutSWTPackage = Package with name:"[omissis].*.scout.client.ui.swt"
ClientScoutPackage = Package with name:"[omissis].*.scout.client.**"
SharedScoutPackage = Package with name:"[omissis].*.scout.shared.**"
ServerScoutPackage = Package with name:"[omissis].*.scout.server.**"
ServicePackage = Package with name:"[omissis].*.service.**"
BusinessPackage = Package with name:"[omissis].*.business.**"
PersistencePackage = Package with name:"[omissis].*.persistence.**"
UtilityPackage = Package with name:"[omissis].*.util.**"
ModelPackage = Package with name:"[omissis].*.model.**"

ClientScoutPackage can only depend on SharedScoutPackage
ServerScoutPackage can only depend on SharedScoutPackage, ServicePackage
ServicePackage can only depend on BusinessPackage
BusinessPackage can only depend on ServicePackage, PersistencePackage
CoreProject cannot depend on StammdatenProject
BetriebProject can only depend on  AngebotProject
LoppisProject can only depend on AngebotProject, BetriebProject

ServiceUiMethods = Method with containingClassType:"interface", name:"**.fos.**.service.ui.*"
ServicePublicMethods = Method with containingClassType:"interface", name:"**.fos.**.service.public.*"
[omissis]ServiceException = Class with name:"**.[omissis]ServiceException"
ServiceUiMethods, ServicePublicMethods must throw [omissis]ServiceException

ServiceImplClasses = Class with name:"**.fos.backend.service.**.impl*", name!:"**.*Stub"
ServiceImplClasses must have annotation "@[omissis]RemoteService" 

FosBatch = Package with name:"**.fos.**.batch" 
ForUiImpl = Package with name:"**.fos.**.service.ui.impl"
ForPublicImpl =  Package with name:"**.fos.**.service.public.impl"
FosBatch cannot depend on ForUiImpl
FosBatch cannot depend on ForPublicImpl

Persistence = Package with name:"**.persistence"
Service = Package with name:"**.service"
Batch = Package with name:"**.batch"
ScoutClient = Package with name:"**.scout.client**"
ScoutServer = Package with name:"**.scout.server**"
Persistence cannot depend on Service
Batch cannot depend on Persistence
ScoutClient cannot depend on ScoutServer

Util = Package with name:"**.[omissis].*.util**"
Model = Package with name:"**.[omissis].*.model**"
Util,Model can only depend on Util,Model

CoreProject = Package with name:"[omissis].core**"
StammdatenProject = Package with name:"[omissis].stammdaten**"
AngebotProject = Package with name:"[omissis].angebot**"
FosProject = Package with name:"[omissis].fos**"
FosProject can only depend on FosProject, CoreProject, StammdatenProject, AngebotProject

ModelClasses = Class with name:"**.*Model", type!:"interface"
DTOClasses = Class with name:"**.*DTO", type!:"interface"
ModelClasses, DTOClasses must implement interface "java.io.Serializable"
```



**case study C3 **

```
ilClasses = PhpClass with name:"il*"
assClasses = PhpClass with name:"ass*"
WholeIliasCodebase = {ilClasses, assClasses}
GUIClasses = PhpClass with name:"*GUI*"
triggerError = PhpFunction with name:"trigger_error"
raiseError = PhpFunction with name:"raiseError"
ilLanguageGlobal = PhpGlobal with name:"lng"
ilLanguageClass = PhpClass with name:"ilLanguage"
exitOrDie = PhpFunction with name:"exit/die"
eval = PhpFunction with name:"eval"
ilTopLevelException = PhpClass with name:"ilException"
ilExceptions = PhpClass with name:"il*Exception*"
ilExceptionsWithoutTopLevelException = {ilExceptions} except {ilTopLevelException} 
SuppressErrors = PhpDependency with name:"@"
ilDBClass = PhpClass with name:"ilDB"
ilDBGlobal = PhpGlobal with name:"ilDB"
ilTemplateClass = PhpClass with name:"ilTemplate"
ilTemplateGlobal = PhpGlobal with name:"tpl"
ilTabsClass = PhpClass with name:"ilTabsGUI"
ilTabsGlobal = PhpGlobal with name:"ilTabs"
SetErrorHandler = PhpFunction with name:"set_error_handler"
SetExceptionHandler = PhpFunction with name:"set_exception_handler"
SetErrorOrExceptionHandler = {SetExceptionHandler, SetErrorHandler}
IliasTemplateFile = File with file:"*/tpl.*.html"


/**
 * The global php function trigger_error is a procedural concept. Please ommit this php function and use an ILIAS exception instead.
 */
WholeIliasCodebase cannot invoke triggerError

/**
 * Exit and die are a bad idea in both development and production: In development you have no idea what went wrong and in production the user receives a white page and has no idea whats going on. The implemented exception handling does not work if you use exit or die. 
 *
 * If you want to send a file consider using: Services/FileDelivery.
 *
 * Exception: Currently if you want to output json you most likely have to use exit() at the moment.
 */
WholeIliasCodebase cannot invoke exitOrDie

/**
 * The error and exception handler of ILIAS should not be overridden!
 */
WholeIliasCodebase cannot invoke SetErrorOrExceptionHandler

/**
 * The php function eval() is not good practice. Its use often comes with a high security risk, because it is generally not a trivial task to make sure that a paramater of eval() can be fully trusted. And if it is, then eval() is usually not neccessary. It is also tricky to debug, because it obfuscates control flow. Last but not least, it does not work with HHVM in the special "RepoAuthoritative" mode, which makes PHP run extra-fast.
 */
 WholeIliasCodebase cannot invoke eval


/**
 * Silencing errors with the @ operator is bad practice. It makes code uneccessarily harder to debug if the currently suppressed error changes into a real show-stopper bug. Try to handle the possible warnings and errors.
 */
WholeIliasCodebase cannot depend on SuppressErrors

/**
 * All ILIAS Exceptions must be in a Hierarchy and finally extend ilException Every module/service should define its own top level Exception e.g. ilCourseException where all other exceptions from that module/service extend this service/module Exception.
 *
 * See: http://www.ilias.de/docu/goto_docu_pg_42740_42.html
 */
ilExceptionsWithoutTopLevelException can only depend on ilExceptions

/**
 * The GUI-Layer should not itself interact with the database. Try to build reusable Model classes, adding a layer of abstraction instead of accessing the database.
 */
GUIClasses cannot depend on ilDBClass

/**
 * The GUI-Layer should not itself interact with the database. Try to build reusable Model classes, adding a layer of abstraction instead of accessing the database.
 */
GUIClasses cannot depend on ilDBGlobal

/**
 * Only the GUI-Layer should use the global variable ilTabs and the class ilTabsGUI. If you use them in a Model the model cannot be used for e.g. SOAP requests without unnecessary overhead.
 */
only GUIClasses can depend on ilTabsClass

/**
 * Only the GUI-Layer should use the global variable ilTabs and the class ilTabsGUI. If you use them in a Model the model cannot be used for e.g. SOAP requests without unnecessary overhead.
 */
only GUIClasses can depend on ilTabsGlobal

/**
 * Only the GUI-Layer should use the global variable ilTemplate and the class ilTemplate itself. If you use ilTemplate in the model it cannot be used by calls that do not initiate global ilTemplate for example SOAP. 
 */
only GUIClasses can depend on ilTemplateClass

/**
 * Only the GUI-Layer should use the global variable ilTemplate and the class ilTemplate itself. If you use ilTemplate in the model it cannot be used by calls that do not initiate global ilTemplate for example SOAP. 
 */
only GUIClasses can depend on ilTemplateGlobal

/**
 * ILIAS should not rely on PEAR::raiseError. We would like to introduce exceptions instead. 
 */
WholeIliasCodebase cannot invoke raiseError

**
 * Used to detect HTML <script>-Tags 
 */
IliasTemplateFile cannot contain text "<script*>"

/**
 * Used to detect JavaScript in e.g. HTML attributes, e.g. <a href="javascript:void(0);">x</a>
 */
IliasTemplateFile cannot contain text "javascript*:"

/**
 * Used to detect inline JavaScript events, e.g. <a onclick="alert('HelloWorld');">x</a>
 */
IliasTemplateFile cannot contain text "on(blur|change|click|dblclick|focus|keydown|keypress|keyup|load|mousemove|mouseup|mousedown|mouseenter|mouseleave|mouseout|mouseover|mousewheel|resize|select|submit|unload|wheel|scroll)"
```
