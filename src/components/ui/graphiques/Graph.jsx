"use client";

import {
  Area,
  AreaChart,
  CartesianGrid,
  ResponsiveContainer,
  XAxis,
  YAxis,
} from "recharts";

const data = [
  { date: "2023-04-01", cashIn: 1926, cashOut: 1450 },
  { date: "2023-04-02", cashIn: 2994, cashOut: 2235 },
  { date: "2023-04-03", cashIn: 5000, cashOut: 3668 },
  { date: "2023-04-04", cashIn: 8000, cashOut: 4959 },
  { date: "2023-04-05", cashIn: 12000, cashOut: 6277 },
  { date: "2023-04-06", cashIn: 11000, cashOut: 6876 },
  { date: "2023-04-07", cashIn: 4000, cashOut: 7410 },
  { date: "2023-04-08", cashIn: 7000, cashOut: 8624 },
  { date: "2023-04-09", cashIn: 12000, cashOut: 9890 },
  { date: "2023-04-10", cashIn: 16000, cashOut: 10955 },
  { date: "2023-04-11", cashIn: 17000, cashOut: 11712 },
  { date: "2023-04-12", cashIn: 18000, cashOut: 12811 },
];

export default function Graph() {
  return (
    <div className="flex items-center bg-slate-950 h-screen flex-col  gap-4">
      <div className="w-full max-w-lg h-56 border border-slate-700 p-2 m-2 rounded-md">
        <ResponsiveContainer height="0%" width="100%" />
        <AreaChart data={data} width={300} height={200}>
          <CartesianGrid />
          <Area
            dataKey="cashIn"
            type="monotone"
            fill={`url(#cyanGradient)`}
            stroke="#06b6d4"
          />

          <CartesianGrid />
          <Area
            dataKey="cashOut"
            type="monotone"
            fill={`url(#cyanGradient)`}
            stroke="#ef4444"
          />

          <XAxis
            dataKey="date"
            stroke="#334155"
            fontSize={10}
            tickLine={false}
            axisLine={false}
            interval={3}
            tickFormatter={(string) => {
              //format like 22/04
              return string.substring(5, 10).replace("-", "/");
            }}
          />

          <YAxis
            dataKey="cashIn"
            stroke="#334155"
            fontSize={10}
            tickLine={false}
            axisLine={false}
            interval={1}
            tickFormatter={(value) => {
              return `$${Intl.NumberFormat().format(value)}`;
            }}
          />

          <defs>
            <linearGradient id="cyanGradient" x1="0" y1="0" x2="0" y2="1">
              <stop offset="0%" stopColor="#06b6d4" stopOpacity={0.4} />
              <stop offset="75%" stopColor="#8b5cf6" stopOpacity={0.05} />
            </linearGradient>
          </defs>
        </AreaChart>
      </div>
    </div>
  );
}
