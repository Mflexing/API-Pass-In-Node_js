import { prisma } from '../src/lib/prisma';

async function seed() {
    await prisma.event.create({
        data: {
            id: '95d1d91a-70ab-458a-aec6-e88336744d79',
            title: 'Evento 0',
            slug: 'evento-0',
            details: 'Evento teste',
            maximumAttendees: 120,

        }
    })
}

seed().then(() => {
    console.log('Database seeded!')
    prisma.$disconnect()
})