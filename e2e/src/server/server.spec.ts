import { faker } from '@faker-js/faker';
import { PrismaClient } from '@prisma/client';
import axios from 'axios';
import { range } from 'lodash';

describe('GET /api', () => {
    let prisma: PrismaClient;

    beforeAll(async () => {
        prisma = new PrismaClient();

        const users = range(10).map(() => ({
            name: faker.person.fullName(),
            email: faker.internet.email(),
        }));

        await prisma.$connect();
        await prisma.$transaction([prisma.user.deleteMany()]);
        await prisma.user.createMany({
            data: users,
            skipDuplicates: true,
        });
    });

    afterAll(async () => {
        await prisma.$transaction([prisma.user.deleteMany()]);
        await prisma.$disconnect();
    });

    it('should return a message', async () => {
        const response = await axios.get(`http://localhost:3000/api`);

        expect(response.status).toEqual(200);
        expect(response.data).toEqual({ message: 'Hello API' });
    });
});
