-- =============================================
-- TABLE 1: Medicines (Product Master)
-- =============================================
CREATE TABLE medicines (
    medicine_id       VARCHAR(20)    PRIMARY KEY,
    medicine_name     VARCHAR(200)   NOT NULL,
    generic_name      VARCHAR(200),
    category          VARCHAR(100),   -- e.g. Antibiotic, Painkiller, Vitamin
    dosage_form       VARCHAR(50),    -- Tablet, Syrup, Injection, Capsule
    strength          VARCHAR(50),    -- e.g. 500mg, 10ml
    unit_price        DECIMAL(10,2),
    requires_prescription TINYINT(1), -- 1=Yes, 0=No
    storage_condition VARCHAR(100)    -- Room Temp, Refrigerated, Frozen
);

-- =============================================
-- TABLE 2: Suppliers
-- =============================================
CREATE TABLE suppliers (
    supplier_id       VARCHAR(20)    PRIMARY KEY,
    supplier_name     VARCHAR(200),
    contact_person    VARCHAR(100),
    phone             VARCHAR(20),
    email             VARCHAR(100),
    city              VARCHAR(100),
    country           VARCHAR(100),
    lead_time_days    INT            -- avg days to deliver after order
);

-- =============================================
-- TABLE 3: Inventory (Stock Levels)
-- =============================================
CREATE TABLE inventory (
    inventory_id      INT            AUTO_INCREMENT PRIMARY KEY,
    medicine_id       VARCHAR(20),
    supplier_id       VARCHAR(20),
    batch_number      VARCHAR(50),
    manufacture_date  DATE,
    expiry_date       DATE,
    quantity_in_stock INT,
    reorder_level     INT,           -- trigger restocking below this qty
    reorder_quantity  INT,           -- how much to order when restocking
    warehouse_section VARCHAR(20),   -- e.g. A1, B3, Cold Storage
    last_updated      TIMESTAMP      DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (medicine_id)  REFERENCES medicines(medicine_id),
    FOREIGN KEY (supplier_id)  REFERENCES suppliers(supplier_id)
);

SET @@foreign_key_checks = 0; -- in case foreign key constraint fails perform this --
SET @@foreign_key_checks= 1;

-- =============================================
-- TABLE 4: Sales / Dispensing Records
-- =============================================
CREATE TABLE sales (
    sale_id           INT            AUTO_INCREMENT PRIMARY KEY,
    medicine_id       VARCHAR(20),
    sale_date         DATE,
    quantity_sold     INT,
    unit_price        DECIMAL(10,2),
    total_amount      DECIMAL(10,2),
    patient_type      VARCHAR(50),   -- Inpatient, Outpatient, Emergency
    prescription_no   VARCHAR(50),
    pharmacist_id     VARCHAR(20),
    FOREIGN KEY (medicine_id) REFERENCES medicines(medicine_id)
);

-- =============================================
-- TABLE 5: Purchase Orders (Restocking)
-- =============================================
CREATE TABLE purchase_orders (
    po_id             INT            AUTO_INCREMENT PRIMARY KEY,
    medicine_id       VARCHAR(20),
    supplier_id       VARCHAR(20),
    order_date        DATE,
    expected_delivery DATE,
    actual_delivery   DATE,
    quantity_ordered  INT,
    quantity_received INT,
    unit_cost         DECIMAL(10,2),
    total_cost        DECIMAL(10,2),
    po_status         VARCHAR(30),   -- Pending, Delivered, Cancelled, Partial
    FOREIGN KEY (medicine_id) REFERENCES medicines(medicine_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);
