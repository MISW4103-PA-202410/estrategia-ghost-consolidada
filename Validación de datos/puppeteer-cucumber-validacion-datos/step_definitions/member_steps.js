// Steps for crear-page.feature
const { Given, When, Then } = require('@cucumber/cucumber');
const [ dataGenerator ] = require('./utils');
const scope = require('./support/scope')
const constants = require('./support/constants')
const _ = require('lodash')
const chai = require('chai')
var faker = require('faker');


Given('doy click al primer miembro en la lista', async () => {
    await scope.pages.members.clickOnFirstMember();
});

When('ingreso {string} como nombre del miembro', async (data) => {
    //Separa el data por " - "
    const escenario = data.split(' - ')[0];
    data = data.split(' - ')[1];
    //Get the data
    const nombre = dataGenerator(data);
    //Upload tittle
    const title = escenario + " - " + nombre
    scope.variables.memberName = title;
    await scope.pages.members.fillName(title);
});

When('ingreso email {string}', async (data) => {
    //Get the data
    const email = dataGenerator(data);
    //Upload email
    scope.variables.email = email;
    await scope.pages.members.fillEmail(email);
});

When('reescribo {string} como nombre del miembro', async (data) => {
    //Separa el data por " - "
    const escenario = data.split(' - ')[0];
    data = data.split(' - ')[1];
    //Get the data
    const nombre = dataGenerator(data);
    //Upload tittle
    const title = escenario + " - " + nombre
    scope.variables.memberName = title;
    await scope.pages.members.reWriteName(title);
});

When('reescribo email {string}', async (data) => {
    //Get the data
    const email = dataGenerator(data);
    //Upload email
    scope.variables.email = email;
    await scope.pages.members.reWriteEmail(email);
});


When('guardo el miembro', async () => {
    await scope.pages.members.saveMember();
});

Then('el miembro debe existir', async () => {
    const memberExists = await scope.pages.members.findMember(scope.variables.memberName);
    chai.expect(memberExists).to.be.true;
});

Then('importo miembros de {string}', async (data) => {
    //Get the data
    const members = dataGenerator(data);
    const uploaded = await scope.pages.members.importMembers(members);
    chai.expect(uploaded).to.be.true;
});


