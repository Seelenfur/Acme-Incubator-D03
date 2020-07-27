
<%--
- menu.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java" import="acme.framework.helpers.PrincipalHelper,acme.entities.roles.Provider,acme.entities.roles.Consumer"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:menu-bar code="master.menu.home">
	<acme:menu-left>
		<acme:menu-option code="master.menu.anonymous" access="isAnonymous()">
			
			<acme:menu-suboption code="master.menu.anonymous.list-marin-bulletin" action="/anonymous/marin-bulletin/list" />
			<acme:menu-suboption code="master.menu.anonymous.create-marin-bulletin" action="/anonymous/marin-bulletin/create" />
			
			<acme:menu-separator />
			
			<acme:menu-suboption code="master.menu.anonymous.list-fernandez-bulletin" action="/anonymous/fernandez-bulletin/list" />
			<acme:menu-suboption code="master.menu.anonymous.create-fernandez-bulletin" action="/anonymous/fernandez-bulletin/create" />
			
			<acme:menu-separator />
			
			<acme:menu-suboption code="master.menu.anonymous.list-jimenez-bulletin" action="/anonymous/jimenez-bulletin/list" />
			<acme:menu-suboption code="master.menu.anonymous.create-jimenez-bulletin" action="/anonymous/jimenez-bulletin/create" />
			
			<acme:menu-separator />
			
			<acme:menu-suboption code="master.menu.anonymous.list-donaire-bulletin" action="/anonymous/donaire-bulletin/list" />
			<acme:menu-suboption code="master.menu.anonymous.create-donaire-bulletin" action="/anonymous/donaire-bulletin/create" />
			
			<acme:menu-separator />
			
			<acme:menu-suboption code="master.menu.anonymous.list-gonzalez-bulletin" action="/anonymous/gonzalez-bulletin/list" />
			<acme:menu-suboption code="master.menu.anonymous.create-gonzalez-bulletin" action="/anonymous/gonzalez-bulletin/create" />
		</acme:menu-option>

		<acme:menu-option code="master.menu.anonymous.links" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-marin" action="http://www.game.es/"/>
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-fernandez" action="http://weplan.appspot.com/"/>
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-jimenez" action="http://spotymp3.appspot.com/"/>
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-donaire" action="https://books.google.es/books/about/La_Sombra_del_Viento.html?id=fYa_hJ4bWnsC&printsec=frontcover&source=kp_read_button&redir_esc=y#v=onepage&q&f=false"/>
			<acme:menu-suboption code="master.menu.anonymous.favourite-link-gonzalez" action="https://www.youtube.com/watch?v=D0p3TBAn7x0"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.anonymous.notice" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.anonymous.list-notice" action="/anonymous/notice/list"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.anonymous.technology" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.anonymous.list-technology" action="/anonymous/technology/list"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.anonymous.tool-record" access="isAnonymous()">
			<acme:menu-suboption code="master.menu.anonymous.list-tool-record" action="/anonymous/tool-record/list"/>
		</acme:menu-option>
	
		<acme:menu-option code="master.menu.authenticated.notice" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.authenticated.list-notice" action="/authenticated/notice/list"/>

		</acme:menu-option>
		
		<acme:menu-option code="master.menu.authenticated.technology" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.authenticated.list-technology" action="/authenticated/technology/list"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.authenticated.tool-record" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.authenticated.list-tool-record" action="/authenticated/tool-record/list"/>
		</acme:menu-option>
		<acme:menu-option code="master.menu.authenticated.challenge" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.authenticated.list-challenge" action="/authenticated/challenge/list"/>
		</acme:menu-option>
		
		<acme:menu-option code="master.menu.authenticated.overture" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.authenticated.list-overture" action="/authenticated/overture/list"/>
		</acme:menu-option>
		<acme:menu-option code="master.menu.authenticated.inquirie" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.authenticated.list-inquirie" action="/authenticated/inquirie/list"/>
		</acme:menu-option>


		<acme:menu-option code="master.menu.administrator" access="hasRole('Administrator')">
			<acme:menu-suboption code="master.menu.administrator.user-accounts" action="/administrator/user-account/list"/>
			<acme:menu-suboption code="master.menu.administrator.customisation" action="/administrator/customisation/show"/>
			<acme:menu-suboption code="master.menu.administrator.list-notice" action="/administrator/notice/list"/>
      <acme:menu-suboption code="master.menu.administrator.dashboard" action="/administrator/dashboard/show"/>
			<acme:menu-suboption code="master.menu.administrator.chart" action="/administrator/chart/show"/>
			<acme:menu-separator/>
			<acme:menu-suboption code="master.menu.administrator.shutdown" action="/master/shutdown"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.provider" access="hasRole('Provider')">
			<acme:menu-suboption code="master.menu.provider.favourite-link" action="http://www.example.com/"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.consumer" access="hasRole('Consumer')">
			<acme:menu-suboption code="master.menu.consumer.favourite-link" action="http://www.example.com/"/>
		</acme:menu-option>
	</acme:menu-left>

	<acme:menu-right>
		<acme:menu-option code="master.menu.sign-up" action="/anonymous/user-account/create" access="isAnonymous()"/>
		<acme:menu-option code="master.menu.sign-in" action="/master/sign-in" access="isAnonymous()"/>

		<acme:menu-option code="master.menu.user-account" access="isAuthenticated()">
			<acme:menu-suboption code="master.menu.user-account.general-data" action="/authenticated/user-account/update"/>
			<acme:menu-suboption code="master.menu.user-account.become-provider" action="/authenticated/provider/create" access="!hasRole('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.provider" action="/authenticated/provider/update" access="hasRole('Provider')"/>
			<acme:menu-suboption code="master.menu.user-account.become-consumer" action="/authenticated/consumer/create" access="!hasRole('Consumer')"/>
			<acme:menu-suboption code="master.menu.user-account.consumer" action="/authenticated/consumer/update" access="hasRole('Consumer')"/>
		</acme:menu-option>

		<acme:menu-option code="master.menu.sign-out" action="/master/sign-out" access="isAuthenticated()"/>
	</acme:menu-right>
</acme:menu-bar>


