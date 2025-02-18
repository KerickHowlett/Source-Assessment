import type { Creator } from '@prisma/client';

type OriginalMediaSeed = {
    fullName: string;
    creatorType: string;
    mediaName: string;
    mediaType: string;
};

const DATA: OriginalMediaSeed[] = [
    {
        fullName: 'Stephen King',
        creatorType: 'Author',
        mediaName: 'The Dark Tower',
        mediaType: 'Book',
    },
    {
        fullName: 'Stephen King',
        creatorType: 'Author',
        mediaName: 'The Green Mile',
        mediaType: 'Book',
    },
    {
        fullName: 'Stephen King',
        creatorType: 'Author',
        mediaName: 'The Shining',
        mediaType: 'Book',
    },
    {
        fullName: 'Stephen King',
        creatorType: 'Author',
        mediaName: 'The Stand',
        mediaType: 'Book',
    },
    {
        fullName: 'J.R.R. Tolkien',
        creatorType: 'Author',
        mediaName: 'The Hobbit',
        mediaType: 'Book',
    },
    {
        fullName: 'J.R.R. Tolkien',
        creatorType: 'Author',
        mediaName: 'The Lord of the Rings',
        mediaType: 'Book',
    },
    {
        fullName: 'J.R.R. Tolkien',
        creatorType: 'Author',
        mediaName: 'The Silmarillion',
        mediaType: 'Book',
    },
    {
        fullName: 'J.R.R. Tolkien',
        creatorType: 'Author',
        mediaName: 'The Two Towers',
        mediaType: 'Book',
    },
    {
        fullName: 'George Orwell',
        creatorType: 'Author',
        mediaName: '1984',
        mediaType: 'Book',
    },
    {
        fullName: 'George Orwell',
        creatorType: 'Author',
        mediaName: "A Clergyman's Daughter",
        mediaType: 'Book',
    },
    {
        fullName: 'George Orwell',
        creatorType: 'Author',
        mediaName: 'Animal Farm',
        mediaType: 'Book',
    },
    {
        fullName: 'George Orwell',
        creatorType: 'Author',
        mediaName: 'The Lion and the Unicorn',
        mediaType: 'Book',
    },
    {
        fullName: 'C.S. Lewis',
        creatorType: 'Author',
        mediaName: 'The Chronicles of Narnia',
        mediaType: 'Book',
    },
    {
        fullName: 'C.S. Lewis',
        creatorType: 'Author',
        mediaName: 'The Lion, the Witch and the Wardrobe',
        mediaType: 'Book',
    },
    {
        fullName: 'Pink Floyd',
        creatorType: 'Music Group',
        mediaName: 'The Dark Side of the Moon',
        mediaType: 'Album',
    },
    {
        fullName: 'Pink Floyd',
        creatorType: 'Music Group',
        mediaName: 'Wish You Were Here',
        mediaType: 'Album',
    },
    {
        fullName: 'Pink Floyd',
        creatorType: 'Music Group',
        mediaName: 'The Wall',
        mediaType: 'Album',
    },
    {
        fullName: 'Pink Floyd',
        creatorType: 'Music Group',
        mediaName: 'The wall',
        mediaType: 'Album',
    },
    {
        fullName: 'Pink Floyd',
        creatorType: 'Music Group',
        mediaName: 'The Final Cut',
        mediaType: 'Album',
    },
    {
        fullName: 'Rush',
        creatorType: 'Music Group',
        mediaName: ' 2112',
        mediaType: 'Album',
    },
    {
        fullName: 'Rush',
        creatorType: 'Music Group',
        mediaName: 'Moving Pictures',
        mediaType: 'Album',
    },
    {
        fullName: 'Rush',
        creatorType: 'Music Group',
        mediaName: 'Clockwork Angels',
        mediaType: 'Album',
    },
    {
        fullName: 'Rush',
        creatorType: 'Music Group',
        mediaName: 'Snakes & Arrows',
        mediaType: 'Album',
    },
    {
        fullName: 'Led Zeppelin',
        creatorType: 'Music Group',
        mediaName: 'Led Zeppelin IV',
        mediaType: 'Album',
    },
    {
        fullName: 'Led Zeppelin',
        creatorType: 'Music Group',
        mediaName: 'Physical Graffiti',
        mediaType: 'Album',
    },
    {
        fullName: 'Led Zeppelin',
        creatorType: 'Music Group',
        mediaName: 'Physical Graffiti',
        mediaType: 'Album',
    },
    {
        fullName: 'Led Zeppelin',
        creatorType: 'Music Group',
        mediaName: 'Houses of the Holy',
        mediaType: 'Album',
    },
    {
        fullName: 'Led Zeppelin',
        creatorType: 'Music Group',
        mediaName: 'Presence',
        mediaType: 'Album',
    },
    {
        fullName: 'Yes',
        creatorType: 'Music Group',
        mediaName: 'The Yes Album',
        mediaType: 'Album',
    },
    {
        fullName: 'Yes',
        creatorType: 'Music Group',
        mediaName: 'Fragile',
        mediaType: 'Album',
    },
    {
        fullName: 'Yes',
        creatorType: 'Music Group',
        mediaName: 'Close to the Edge',
        mediaType: 'Album',
    },
    {
        fullName: 'Yes',
        creatorType: 'Music Group',
        mediaName: '90125',
        mediaType: 'Album',
    },
] as const;

function parseCreatorData(data: OriginalMediaSeed[]) {
    return data.map(({ fullName, creatorType }) => ({ fullName, creatorType } as const));
}

function parseMediaData(creators: Pick<Creator, 'id' | 'fullName'>[], data: OriginalMediaSeed[]) {
    // - NOTE: This is a dirty way of mapping the creators to their ids
    // -       by using their full name as the unique identifier.
    // -       Normally, you wouldn't wanna do this, because there are
    // -       multiple people named "Bob", for example. However, it can
    // -       be a safe assumption that the creators' names will be
    // -       unique on account of branding in most cases, but still
    // -       isn't a guarantee. But in this case, all the creator
    // -       names ARE unique, so it'll work.
    const mappedCreators = new Map<string, string>();
    for (const creator of creators) {
        mappedCreators.set(creator.fullName, creator.id);
    }

    return data.map(({ fullName, mediaName, mediaType }) => {
        const creatorId = mappedCreators.get(fullName);
        if (creatorId === undefined) {
            throw new Error(`Creator not found: ${fullName}`);
        }

        return { creatorId, mediaName, mediaType } as const;
    });
}

async function seedData(data: OriginalMediaSeed[]) {
    const { PrismaClient } = await import('@prisma/client');
    const prisma = new PrismaClient();

    try {
        await prisma.$transaction(async (prisma) => {
            console.log('Resetting database...');
            await Promise.all([prisma.media.deleteMany(), prisma.creator.deleteMany()]);

            console.log('Seeding User Data...');
            const creatorsData = parseCreatorData(data);
            const creators: Pick<Creator, 'id' | 'fullName'>[] =
                await prisma.creator.createManyAndReturn({
                    select: {
                        id: true,
                        fullName: true,
                    },
                    skipDuplicates: true,
                    data: creatorsData,
                });

            console.log('Seeding Media Data...');
            const mediaData = parseMediaData(creators, data);
            await prisma.media.createMany({
                data: mediaData,
                skipDuplicates: true,
            });
        });

        console.log('Database has seeded successfully!');
    } catch (e) {
        console.error(e);
    }
}

seedData(DATA);
