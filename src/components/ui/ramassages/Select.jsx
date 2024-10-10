import React from "react";

export default function Select({ label, optionDisabled, options = [] }) {
  return (
    <>
      <label className="form-control w-full max-w-xs">
        <div className="label">
          <span className="label-text">{label}</span>
        </div>
        <select className="select select-bordered">
          <option disabled selected>
            {optionDisabled}
          </option>
          {Array.isArray(options) &&
            options.map((option) => <option key={option}>{option}</option>)}
        </select>
      </label>
    </>
  );
}
