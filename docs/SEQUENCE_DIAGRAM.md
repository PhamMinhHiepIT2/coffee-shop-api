## Customer Registration
![Customer Registration](./images/sequence-diagram-customer-registration.png)

- User submits registration → Auth service validates and persists user.
- System returns JWT on successful login.

## Place Order Flow
![Place Order Flow](./images/sequence-diagram-place-order.png)

- Customer selects shop and menu items → Order service validates items and prices.
- Order is saved with items; totals calculated using BigDecimal.
- Optional: Join queue for pickup.

## Check Queue
![Check Queue](./images/sequence-diagram-check-queue.png)

- Customer requests queue position → Queue service computes position and ETA.
- Response includes position and estimated wait based on service time settings.