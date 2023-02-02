import Image from "next/image";
import { Inter } from "@next/font/google";
import styles from "../page.module.css";
import Link from "next/link";

const inter = Inter({ subsets: ["latin"] });
// const hello = fetch()
export default function NewPage() {
  return (
    <main className={styles.main}>
      <div className={styles.description}>
        <div>
          <Link href="/">Go back</Link>
        </div>
      </div>

      <div className={styles.center}>
        <Image
          className={styles.logo}
          src="/next.svg"
          alt="Next.js Logo"
          width={180}
          height={37}
          priority
        />
        <div className={styles.thirteen}>
          <Image src="/thirteen.svg" alt="13" width={40} height={31} priority />
        </div>
      </div>
      <div className={styles.grid}></div>
    </main>
  );
}
