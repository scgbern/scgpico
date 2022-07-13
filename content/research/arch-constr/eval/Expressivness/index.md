---
Title: Expressivness
---

This page contains a detailed report on an experiment performed in order to assess the expressivness of Dicto. The experiment consisted in: (1) collecting a comprehensive set of rules, as reported in scientific publications; (2) finding an appropriate translation of the rules in Dicto. Based on the reported results we can see that the vast majority of the rules encountered during our study can be expressed in Dicto. 



| | | | |
|---|---|---|---|
| **Discovered Rule**	|	**Dicto translation**	|	**supported by Dicto?**	|
|	HiDao elements must have suffix DAO in their name.	|	HiDaoClasses must be named "\*DAO"	|	yes	|
|	HiForms is responsible for presentation logic only.	|	&mdash; unprecise formulation	|	yes	|
|	HiManager classes have package visibility or lower.	|	HiManagerClasses have  visibility \"" / "private"	|	yes	|
|	HiManager may be accessed only via HimInterface.	|	only HimInterface can depend on HiManager 	|	yes	|
|	HiDao classes must extend CorporateWebCore.Dao.GenEntityDao.	|	HiDaoClasses must extend GenEntityDao	|	yes	|
|	HF-Kiosk is not allowed to use HP-Device.	|	HFKiosk cannot depend on HPDevice	|	yes	|
|	HF-Kiosk is only allowed to use HP-Kiosk.	|	HFKiosk can only depend on HPKiosk	|	yes	|
|	HiDao is the only module allowed to use CorporateWebcore.	|	only HiDao can depend on CorporateWebcore	|	yes	|
|	HiDao must use CorporateWebcore.	|	HiDao must depend on CorporateWebcore	|	yes	|
|		|		|	yes	|
|		|		|	yes	|
|	Methods inside class AbstractConnector must be used internally only.	|	only AbstractConnectorMethods can invoke AbstractConnectorMethods	|	yes	|
|	The only caller of method connectorVisibility of class Connector should be the method draw.	|	ConnectorVisibilityMethod can only be invoked by DrawMethod	|	yes	|
|	The classes implementing interface Tool must implement method activate if method isUsable returns true.	|	&mdash; conditional	|	no	|
|	The classes implementing interface Figure should override basicDisplayBox but should not override displayBox.	|	FigureClasses must override "basicDisplayBox"; FigureClasses cannot override "displayBox"	|	yes	|
|	Subclasses of AbstractFigure should perform a super call in methods deactivate and viewSelectionClass.	|	AFDeactivate, AFViewSelectionClass  must invoke super	|	yes	|
|	Subclasses of DrawApplet, DrawApplication and VersionRequester should override method getRequiredVersions and return an array of strings.	|	DrawAppletSubClasses must override GetRequiredVersionsMethod	|	yes	|
|	Subclasses of DrawApplication should not override basicDisplayBox but should override exit.	|	DrawApplicationSubClasses cannot override "basicDisplayBox"; DrawApplicationSubClasses must override "exit" 	|	yes	|
|	The method init should be called after creating or loading a CompositeFigure, that is, after calling the method new or read.	|	&mdash; invocation order	|	no	|
|	Calling method getLocator requires cloning the instance (calling method clone) to avoid that the receiver of getLocator can change the internal behavior of a LocatorHandle.	|	&mdash; conditional	|	no	|
|	Calls to the method addInternalFrameListener should occur before calling the method add when implementing or overriding the method addToDesktop in the class MDIDesktopPane.	|	&mdash; invocation order	|	no	|
|	The constructor of StandardLayouter with parameters should be preferred over the constructor without parameters.	|	StandardLayouter must have method SLConstructor	|	yes	|
|	Sublasses of UndoableAdaptor should override methods undo and redo.	|	UndoableAdaptorSubClasses  must override "undo", "redo"	|	yes	|
|	Pop-up menus in subclasses of CustomSelectionTool must call setAttribute.	|	CustomSelectionToolPopupMethods must invoke "setAttribute"	|	yes	|
|	The status line must be created (i.e. call to setStatusLine) before a tool is set (i.e. call to setTool).	|	&mdash; invocation order	|	no	|
|	Method addToDesktop should be overridden instead of overloaded (seen in class MDIDesktopPane).	|	MDIDesktopPaneSubClasses must override "addToDesktop"	|	yes	|
|	After calling viewDestroying on an object you cannot do anything else on that object (seen in class ViewChangeListener).	|	&mdash; invocation order	|	no	|
|	When extending the class DrawApplication, the methods createOpenFileChooser and createSaveFileChooser should be overridden.	|	DrawApplicationSubClasses must override "createOpenFileChooser", "createSaveFileChooser"	|	yes	|
|	When extending the class StandardDrawingView, the method handleMouseEventException should be overridden.	|	StandardDrawingView must override "handleMouseEventException"	|	yes	|
|	If method mouseUp of class AbstractTool is overridden, the last statement should be a super call.	|	&mdash; invocation order	|	no	|
|	If method mouseDown of class AbstractTool is overridden, the first statement should be a super call.	|	&mdash; invocation order	|	no	|
|	If you call activate or deactivate from the class Tool you should call isActive before (seen in class DrawApplication).	|	&mdash; invocation order	|	no	|
|	The names of the attributes of class FigureAttributeConstant should be used as suffixes of the attributes of class ContentProducer starting with the prefix ENTITY.	|	&mdash; interralation between two groups of entities	|	no	|
|		|		|	yes	|
|	Only the view layer can depend on components provided by AWT/Swing. 	|	only View can depend on Swing, AWT	|	yes	|
|	Only DAOs from the model layer can depend on database services. An exception is granted to the model.DB class, responsible for controlling database connections. 	|	only ModelDAOs, ModelDB can depend on Database	|	yes	|
|	The view layer can only depend on services provided by itself, by the controller layer, and by the util package [..]	|	Vew can only depend on View, Controller, Util	|	yes	|
|	Domain objects must not depend on the DAO, controller, and view types. 	|	Domain cannot depend on DAO, Controller, View	|	yes	|
|	DAO classes can only depend on domain objects, on other model classes allowed to use database services (such as model.DB), and on the util package. 	|	DAOs can only depend on Domain, ModelDB, Util 	|	yes	|
|	The util package must not depend on any class specific to the system source code. 	|	&mdash; unprecise formulation	|	yes	|
|		|		|	yes	|
|	Rule 1: Data access components (DAOs) must not use business logic services and other DAOs 	|	DAOs canot depend on Business, DAOs	|	yes	|
|	Rule 2: Each host transaction component must only be included once in a module 	|	HostTransactions can only be included once in a module 	|	yes	|
|	Rule 3: Host transaction components must not have outgoing connections 	|	HostTransactions cannot have outgoing connections 	|	yes	|
|	Rule 4: Services within one module must communicate via local EJBs 	|	Services1 must communicate via "local EJB"; [..]	|	yes	|
|	Rule 5: Services within one application (but in different modules) must communicate via local EJBs 	|	Services1, Serivces2, [..] must communicate via "local EJB", [..]	|	yes	|
|	Rule 6: Business logic services must only use data access components, host access components and host transaction components if they belong to the same module 	|	BusinessService1 cannot depend on DataAccessOutside1, HostAccessOutside1,HostTransactionOutside1; [..]	|	yes	|
|	Rule 7: Services of different domains must communicate via web services 	|	 Services1, Serivces2, [..] must communicate via "web service"	|	yes	|
|	Rule 8: Different applications should communicate via web services or remote EJBs 	|	 Applications can only communicate via "web service", "remote EJB"	|	yes	|
|	Rule 9: Applications may only access components of the service layer of another application 	|	 App1 can only depend on "app2.service.[Expressivness](%base_url%/research/arch-constr/eval/Expressivness)",  "app3.service.[Expressivness](%base_url%/research/arch-constr/eval/Expressivness)", [..]	|	yes	|
