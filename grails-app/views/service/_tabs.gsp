%{--
  - Copyright (c) 2014 University of Hawaii
  -
  - This file is part of DataCenter metadata (DCmd) project.
  -
  - DCmd is free software: you can redistribute it and/or modify
  - it under the terms of the GNU General Public License as published by
  - the Free Software Foundation, either version 3 of the License, or
  - (at your option) any later version.
  -
  - DCmd is distributed in the hope that it will be useful,
  - but WITHOUT ANY WARRANTY; without even the implied warranty of
  - MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  - GNU General Public License for more details.
  -
  - You should have received a copy of the GNU General Public License
  - along with DCmd.  It is contained in the DCmd release as LICENSE.txt
  - If not, see <http://www.gnu.org/licenses/>.
  --}%

<g:set var="action" value="${actionName != 'show' ? 'edit' : 'show'}"/>
<g:set var="serviceId" value="${serviceInstance.id.toLong()}" />
<!-- <span>actionName: ${actionName}; action: ${action}</span> -->
<div id="tabs" style="margin-top: 5px">
    <ul>

            <li>
                <a href="#tabs-tiers">
                    <g:message code="service.tiers.label" default="Hosts" />
                </a>
            </li>
            <li>
                <a href="#tabs-support-staff"><g:message code="service.supportStaff.label" default="Support Staff" /></a>
            </li>
            <li>
                <a href="#tabs-notes"><g:message code="notes.label" default="Notes" /></a>
            </li>
        </ul>

        <div id="tabs-tiers">
            <g:render template="tierDependencyGrid" model="[serviceId:serviceId]"/>
%{--            <g:render template="softwareDependencyGrid" model="[serviceId:serviceId]"/> --}%
        </div>

    <div id="tabs-support-staff">
        <g:render template="../technicalSupportStaffGrid" model="[action:action, type:'service', objectId:serviceId]"/>
        <g:render template="../functionalSupportStaffGrid" model="[action:action, type:'service', objectId:serviceId]"/>
    </div>
    <div id="tabs-notes">
        <ul>

            <li>
                <a href="#notes-general"><g:message code="notes-general.label" default="General" /></a>
            </li>
        </ul>
        <div id="notes-general">
            <g:render template='../noteTab' model="[action:action, pageType:'service', noteType:'generalNote', objectInstance: serviceInstance, objectId: serviceId]"/>
        </div>
    </div>
</div>
</div>
