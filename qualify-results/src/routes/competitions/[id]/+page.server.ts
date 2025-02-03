import type { PageServerLoad } from './$types';
import { env } from '$env/dynamic/private';
import type { Crew, DriverRanking } from './types';

export const load: PageServerLoad = async ({ params }) => {
	const { id } = params;

	const res = await fetch(
		`${env.API_BASE_URL || 'http://localhost:8080'}/competitions/${id}/ranking`
	);
	const {
		ranking,
		drivers,
		eventGroups,
		competition
	}: {
		ranking: DriverRanking[];
		drivers: any;
		eventGroups: any;
		competition: any;
	} = await res.json();

	const crews: Record<number, Crew> = {};
	ranking.forEach((rank) => {
		const driver = drivers[rank.custId];

		if (!crews[driver.crew.id]) {
			crews[driver.crew.id] = {
				id: driver.crew.id,
				name: driver.crew.name,
				team: driver.crew.team,
				ranking: [],
				sum: 0
			};
		}

		crews[driver.crew.id].ranking.push(rank);
	});

	for (const crewId in crews) {
		const driversWithTime = crews[crewId].ranking.filter((rank) => rank.sum);
		if (driversWithTime.length >= competition.crewDriversCount) {
			let sum = 0;
			for (let i = 0; i < competition.crewDriversCount; i++) {
				sum += driversWithTime[i].sum;
			}
			crews[crewId].sum = sum;
		} else {
			crews[crewId].sum = 0;
		}
	}

	const sortedCrews = Object.values(crews).sort((a, b) => {
		if (a.sum === 0) {
			return 1;
		} else if (b.sum === 0) {
			return -1;
		} else {
			return a.sum - b.sum;
		}
	});

	return {
		ranking,
		drivers,
		eventGroups,
		competition,
		crews: sortedCrews
	};
};
