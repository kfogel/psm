/*
 * Copyright 2012-2013 TopCoder, Inc.
 *
 * This code was developed under U.S. government contract NNH10CD71C.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at:
 *     http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package gov.medicaid.services.impl;

import gov.medicaid.entities.CMSUser;
import gov.medicaid.entities.LookupEntity;
import gov.medicaid.services.CMSConfigurator;
import gov.medicaid.services.LookupService;

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import java.util.logging.Logger;

/**
 * A base service class that other classes will extend that provides logging.
 *
 * <p>
 * <b>Thread Safety</b> This bean is mutable and not thread-safe as it deals with non-thread-safe entities. However, in
 * the context of being used in a container, it is thread-safe.
 * </p>
 *
 * @author TCSASSEMBLER
 * @version 1.0
 */
public abstract class BaseService {

    /**
     * It will be used to log events from the service implementations.
     */
    private Logger logger = null;

    /**
     * Lookup service.
     */
    @EJB
    private LookupService lookupService;

    /**
     * The entity manager.
     */
    @PersistenceContext(unitName = "cms")
    private EntityManager em;

    /**
     * Configured user for system calls.
     */
    private CMSUser systemUser;

    /**
     * Default empty constructor.
     */
    protected BaseService() {
    }

    /**
     * Gets the value of the field <code>log</code>.
     *
     * @return the log
     */
    public Logger getLogger() {
        return logger;
    }

    /**
     * This method checks that all required injection fields are in fact provided.
     */
    @PostConstruct
    protected void init() {
        if (logger == null) {
            logger = Logger.getLogger(getClass().getName());
        }

        CMSConfigurator config = new CMSConfigurator();
        if (lookupService == null) {
            lookupService = config.getLookupService();
        }

        if (em == null) {
            em = config.getPortalEntityManager();
        }

        systemUser = config.getSystemUser();
    }

    /**
     * Retrieves the lookup values given the description.
     *
     * @param cls the expected type
     * @param description the description
     * @param <T> the type of lookup entity
     * @return the matching lookup entry
     */
    protected <T extends LookupEntity> T findLookupByDescription(Class<T> cls, String description) {
        return lookupService.findLookupByDescription(cls, description);
    }

    /**
     * Gets the value of the field <code>em</code>.
     *
     * @return the em
     */
    public EntityManager getEm() {
        return em;
    }

    /**
     * Sets the value of the field <code>em</code>.
     *
     * @param em the em to set
     */
    public void setEm(EntityManager em) {
        this.em = em;
    }

    /**
     * Gets the value of the field <code>lookupService</code>.
     * @return the lookupService
     */
    public LookupService getLookupService() {
        return lookupService;
    }

    /**
     * Sets the value of the field <code>lookupService</code>.
     * @param lookupService the lookupService to set
     */
    public void setLookupService(LookupService lookupService) {
        this.lookupService = lookupService;
    }

    /**
     * Gets the value of the field <code>systemUser</code>.
     * @return the systemUser
     */
    public CMSUser getSystemUser() {
        return systemUser;
    }

    /**
     * Sets the value of the field <code>log</code>.
     * @param logger the logger to set
     */
    public void setLog(Logger logger) {
        this.logger = logger;
    }

    /**
     * Sets the value of the field <code>systemUser</code>.
     * @param systemUser the systemUser to set
     */
    public void setSystemUser(CMSUser systemUser) {
        this.systemUser = systemUser;
    }
}
