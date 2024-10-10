import Table from "./Table";

const times = ["Journée en cours", "Veille", "Semaine", "Mois", "Année"];

export default function Tab() {
  return (
    <>
      <div role="tablist" className="tabs tabs-lg tabs-bordered">
        {times.map((time) => (
          <>
            <input
              type="radio"
              name="my_tabs_1"
              role="tab"
              className="tab"
              aria-label={time}
            />
            <div role="tabpanel" className="tab-content p-10">
              <Table />
            </div>
          </>
        ))}
      </div>
    </>
  );
}
