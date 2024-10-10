import ButtonNeutral from "@/components/ui/Button";
import Select from "@/components/ui/ramassages/Select";

export default function Page() {
  return (
    <>
      <h1 className="m-4 text-2xl">Saisie de palette</h1>
      <div className="flex flex-col justify-center items-center">
        <Select
          label="Sélectionner un fruit"
          optionDisabled="Fruit"
          options={["Fraise", "Framboise"]}
        />
        <Select
          label="Sélectionner une variété"
          optionDisabled="Variété"
          options={["Gariguette", "Magnum", "Mara des Bois", "Cirafine"]}
        />
        <Select
          label="Sélectionner la parcelle"
          optionDisabled="Parcelle"
          options={["Vanne", "Cendrieux", "Michel Route"]}
        />
        <Select
          label="Sélectionner un type plateau"
          optionDisabled="Plateau"
          options={["40 x 60", "50 x 30"]}
        />
        <label className="form-control w-full max-w-xs">
          <div className="label">
            <span className="label-text">Nombre de plateaux</span>
          </div>
          <input
            type="number"
            placeholder="Nombre"
            className="input input-bordered w-full max-w-xs"
          />
        </label>
        <ButtonNeutral label="Valider" />
      </div>
    </>
  );
}
