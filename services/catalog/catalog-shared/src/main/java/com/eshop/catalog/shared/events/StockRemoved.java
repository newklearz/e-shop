package com.eshop.catalog.shared.events;

import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.UUID;

@Getter
@NoArgsConstructor
public class StockRemoved extends Event {
  private Integer availableStock;

  public StockRemoved(UUID id, Integer availableStock) {
    super(id);
    this.availableStock = availableStock;
  }
}
