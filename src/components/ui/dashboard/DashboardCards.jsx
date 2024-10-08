import Link from "next/link";
import { links } from "@/lib/nav-links";

export default function DashboardCards() {
  return (
    <>
      {links.map((link) => (
        <Link
          href={link.href}
          className="card w-full lg:card-side bg-base-100 border-2 hover:shadow-xl hover:scale-105 transition-all duration-300 lg:w-[30%] lg:h-[40vh] m-3"
          key={link.href}
        >
          <div className="card-body">
            <h2 className="card-title">{link.title}</h2>
            <p>{link.detail}</p>
          </div>
        </Link>
      ))}
    </>
  );
}
