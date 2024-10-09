import Link from "next/link";
import { links } from "@/lib/nav-links";
import Image from "next/image";

export default function DashboardCards() {
  return (
    <div className="flex flex-wrap justify-center items-center">
      {links.map((link) => (
        <Link
          href={link.href}
          className="card w-full bg-base-100 border-2 hover:shadow-xl hover:scale-105 transition-all duration-300 lg:w-[30%] lg:h-[40vh] m-3"
          key={link.href}
        >
          <figure className="relative w-full h-[250px] hidden lg:block">
            <Image
              src="https://img.freepik.com/vecteurs-libre/conversation-entretien-embauche_74855-7566.jpg?t=st=1728425692~exp=1728429292~hmac=bab32dcde902752dffd96a2115a7605e0ffed0b98775b14f47b5ecbd23ed80a7&w=996"
              alt="Album"
              layout="fill" // This ensures the image covers the whole figure area
              objectFit="cover" // Makes sure the image doesn't stretch
              className="rounded-t-lg"
            />
          </figure>
          <div className="card-body">
            <h2 className="card-title">{link.title}</h2>
            <p>{link.detail}</p>
          </div>
        </Link>
      ))}
    </div>
  );
}
