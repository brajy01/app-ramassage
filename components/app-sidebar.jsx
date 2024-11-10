import * as React from "react";
import { LayoutDashboard } from "lucide-react";

import {
  Sidebar,
  SidebarContent,
  SidebarGroup,
  SidebarHeader,
  SidebarMenu,
  SidebarMenuButton,
  SidebarMenuItem,
  SidebarMenuSub,
  SidebarMenuSubButton,
  SidebarMenuSubItem,
  SidebarRail,
} from "@/components/ui/sidebar";
import { Button } from "./ui/button";

// This is sample data.
const data = {
  navMain: [
    {
      title: "Données",
      url: "#",
      items: [
        {
          title: "Saisie de palette",
          url: "#",
        },
        {
          title: "Tableaux de récolte",
          url: "#",
        },
        {
          title: "Plantations p/ campagne",
          url: "#",
        },
      ],
    },
    {
      title: "Graphiques",
      url: "#",
      items: [
        {
          title: "Comparaison N-1",
          url: "#",
        },
        {
          title: "Comparaison année X",
          url: "#",
        },
      ],
    },
    {
      title: "Admin",
      url: "#",
      items: [
        {
          title: "Gestion de données",
          url: "#",
        },
      ],
    },
  ],
};

export function AppSidebar({ ...props }) {
  return (
    <Sidebar {...props}>
      <SidebarHeader>
        <SidebarMenu>
          <SidebarMenuItem>
            <SidebarMenuButton size="lg" asChild>
              <a href="#">
                <div className="flex aspect-square size-8 items-center justify-center rounded-lg bg-sidebar-primary text-sidebar-primary-foreground">
                  <LayoutDashboard className="size-4" />
                </div>
                <div className="flex flex-col gap-0.5 leading-none">
                  <span className="font-semibold">Tableau de bord</span>
                  <span className="">Ets Brajon</span>
                </div>
              </a>
            </SidebarMenuButton>
          </SidebarMenuItem>
        </SidebarMenu>
      </SidebarHeader>
      <SidebarContent>
        <SidebarGroup>
          <SidebarMenu>
            {data.navMain.map((item) => (
              <SidebarMenuItem key={item.title}>
                <SidebarMenuButton asChild>
                  <a href={item.url} className="font-medium">
                    {item.title}
                  </a>
                </SidebarMenuButton>
                {item.items?.length ? (
                  <SidebarMenuSub>
                    {item.items.map((item) => (
                      <SidebarMenuSubItem key={item.title}>
                        <SidebarMenuSubButton asChild isActive={item.isActive}>
                          <a href={item.url}>{item.title}</a>
                        </SidebarMenuSubButton>
                      </SidebarMenuSubItem>
                    ))}
                  </SidebarMenuSub>
                ) : null}
              </SidebarMenuItem>
            ))}
            <Button variant="destructive" className="mt-8">
              Se déconnecter
            </Button>
          </SidebarMenu>
        </SidebarGroup>
      </SidebarContent>
      <SidebarRail />
    </Sidebar>
  );
}
