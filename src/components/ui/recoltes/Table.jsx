import { data } from "@/lib/placeholder_data";

const tableData = data.ramassage;

export default function Table() {
  return (
    <>
      <div className="overflow-x-auto">
        <table className="table table-pin-rows">
          {/* head */}
          <thead>
            <tr>
              <th>Date</th>
              <th>Parcelle</th>
              <th>Variété</th>
              <th>Nombre plateaux</th>
              <th>Type plateau</th>
              <th>Poids</th>
            </tr>
          </thead>
          <tbody>
            {/* row 1 */}
            <tr>
              <td>{data.ramassage[0].date}</td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <th></th>
              <th></th>
              <th></th>
              <th>TOTAL PLATEAUX</th>
              <th></th>
              <th>TOTAL POIDS</th>
            </tr>
          </tfoot>
        </table>
      </div>
    </>
  );
}
