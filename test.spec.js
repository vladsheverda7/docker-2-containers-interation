import axios from 'axios';
import { expect } from 'chai';

const expectedResponse = 'HelloWorld';
const apiUrl = process.env.API_URL || 'http://hello-world:8080';

describe('GET API Request Tests', async () => {
    it('should be able to get correct response', async () => {
        const res = await axios.get(apiUrl);
        expect(res.data.message).equal(expectedResponse);
    });

    it('should be able to get correct code', async () => {
        const res = await axios.get(apiUrl);
        expect(res.status).equal(500);
    });
});
