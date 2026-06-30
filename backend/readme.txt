├── id            UUID PRIMARY KEY
├── user_id       UUID REFERENCES users(id)
├── product_id    UUID REFERENCES products(id)
├── target_price  INTEGER NOT NULL              -- in paise
├── status        VARCHAR(20) DEFAULT 'active'  -- active | triggered | cancelled
├── triggered_at  TIMESTAMP                     -- null until fired
└── created_at    TIMESTAMP DEFAULT NOW()


-- DEALS (curated deals feed)
deals
├── id              UUID PRIMARY KEY
├── product_id      UUID REFERENCES products(id)
├── affiliate_url   TEXT NOT NULL               -- your Amazon Associates link
├── claimed_discount INTEGER                    -- what Amazon claims (%)
├── real_discount    INTEGER                    -- what price history proves (%)
├── is_verified      BOOLEAN DEFAULT false      -- true if real > claimed
├── deal_score       INTEGER                    -- 0-100, your ranking algorithm
├── expires_at       TIMESTAMP                  -- when deal likely ends
├── is_active        BOOLEAN DEFAULT TRUE
└── created_at       TIMESTAMP DEFAULT NOW()