declare module '@apiverve/domainage' {
  export interface domainageOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface domainageResponse {
    status: string;
    error: string | null;
    data: DomainAgeData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface DomainAgeData {
      domain:              null | string;
      createdDate:         Date | null;
      domainAgeDays:       number | null;
      domainAgeMonths:     number | null;
      domainAgeYears:      number | null;
      domainAgeText:       null | string;
      ageCategory:         null | string;
      isNewlyRegistered:   boolean | null;
      expirationDate:      Date | null;
      lastUpdatedDate:     Date | null;
      daysSinceLastUpdate: number | null;
  }

  export default class domainageWrapper {
    constructor(options: domainageOptions);

    execute(callback: (error: any, data: domainageResponse | null) => void): Promise<domainageResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: domainageResponse | null) => void): Promise<domainageResponse>;
    execute(query?: Record<string, any>): Promise<domainageResponse>;
  }
}
