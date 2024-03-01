import { open } from 'sqlite';
import { Database, Statement } from 'sqlite3';

async function getChromeHistory(): Promise<any[]> {
  console.log('before')
  const db = await open({
    filename: '/Users/abelchalier/Library/Application Support/Google/Chrome/Default/History',
    driver: Database
  });
  console.log('beforqse')

  const pragma = `PRAGMA locking_mode = EXCLUSIVE`;
  await db.exec(pragma);

  const query = `
    SELECT url, title, visit_count, last_visit_time 
    FROM urls JOIN visits ON urls.id = visits.url LIMIT 100;
  `;

  const result: any[] = [];
  console.log('ddd')
  const statement = await db.prepare(query);
  console.log('ddd')
  while (true) {
    const row = await statement.get();
    console.log({ row })
    if (!row) break;
    result.push(row);
  }

  await statement.finalize();
  await db.close();

  return result;
}


getChromeHistory()
