const { ConsoleMessage } = require("puppeteer");
const constants = require("../support/constants");

class MembersPage {
    constructor(page) {
        this.page = page;
    }

    async newMember() {
        // Wait for the "New member" button to be available
        await this.page.waitForSelector('a[data-test-new-member-button="true"]');
        // Wait 500ms
        await new Promise(r => setTimeout(r, 500));
        // Click on the "New member" button
        await this.page.click('a[data-test-new-member-button="true"]');
    }

    async fillName(name) {
        // Wait for the "Name" input to be available
        await this.page.waitForSelector('input[data-test-input="member-name"]');
        // Type the name
        await this.page.type('input[data-test-input="member-name"]', name);
        await this.page.keyboard.press('Enter');
    }

    async reWriteName(name) {
        // Wait for the "Name" input to be available
        await this.page.waitForSelector('input[data-test-input="member-name"]');
        // 3 clicks for re-write the name
        await this.page.click('input[data-test-input="member-name"]', {clickCount: 3});
        // Type the name
        await this.page.type('input[data-test-input="member-name"]', name);
        await this.page.keyboard.press('Enter');
    }

    async reWriteEmail(email) {
        // Wait for the "Email" input to be available
        await this.page.waitForSelector('input[data-test-input="member-email"]');
        // 3 clicks for re-write the email
        await this.page.click('input[data-test-input="member-email"]', {clickCount: 3});
        // Type the email
        await this.page.type('input[data-test-input="member-email"]', email);
        await this.page.keyboard.press('Enter');
    }

    async clickOnFirstMember() {
        // Wait for the first member to be available
        await this.page.waitForSelector('tr[data-test-list="members-list-item"]');
        // Click on the first member
        await this.page.click('tr[data-test-list="members-list-item"]');
        await new Promise(r => setTimeout(r, 1000));
    }

    async fillEmail(email) {
        // Wait for the "Email" input to be available
        await this.page.waitForSelector('input[data-test-input="member-email"]');
        // Type the email
        await this.page.type('input[data-test-input="member-email"]', email);
        await this.page.keyboard.press('Enter');
    }

    async saveMember() {
        // Wait for the "Save" button to be available
        await this.page.waitForSelector('button[data-test-button="save"]');
        // Click on the "Save" button
        await this.page.click('button[data-test-button="save"]');
        await new Promise(r => setTimeout(r, 2000));
    }

    async findMember(name) {
        // Wait for the "Filter members" input to be available
        await this.page.waitForSelector('input[data-test-input="members-search"]');
        // Type the name
        await new Promise(r => setTimeout(r, 1000));
        await this.page.type('input[data-test-input="members-search"]', name);
        await new Promise(r => setTimeout(r, 1000));
        // Wait for the member to be displayed 'tr[data-test-list="members-list-item"]'
        const members = await this.page.$$('tr[data-test-list="members-list-item"]');
        await this.page.keyboard.press('Enter');
        // Return true if the member is found
        return members.length === 1;
    }

    async importMembers(filePath) {
        // Wait for the members buttom selector
        await this.page.waitForSelector('button[data-test-button="members-actions"]');
        // Click on the members buttom
        await this.page.click('button[data-test-button="members-actions"]');
        // Wait for the import buttom selector
        await this.page.waitForSelector('a[data-test-link="import-csv"]');
        // Click on the import buttom
        await this.page.click('a[data-test-link="import-csv"]');
        //import dialog
        // Wait for the import dialog selector
        await this.page.waitForSelector('div[class="gh-member-import-wrapper "]');
        await this.page.waitForSelector('div[class="upload-form br3"]');
        //upload file
        const [fileChooser] =  await Promise.all([
            this.page.waitForFileChooser(),
            this.page.click('div[class="upload-form br3"]')
        ]);
        await fileChooser.accept([filePath]);
        return true;
    }
}

module.exports = MembersPage;