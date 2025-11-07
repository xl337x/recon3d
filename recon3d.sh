#!/bin/bash
# â•”â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•—
# â•‘  ðŸ”¥ THE ULTIMATE RECON SWISS ARMY KNIFE 2025 ðŸ”¥              â•‘
# â•‘  60+ Premium Tools | Intelligent Automation | Zero Manual    â•‘
# â•‘  The Treasure of All Treasures - Nothing Escapes This Beast  â•‘
# â•šâ•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•

# CRITICAL: Don't exit on errors - log and continue
set -uo pipefail
IFS=$'\n\t'

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# COLORS & EMOJIS
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# EPIC BANNER
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
banner() {
cat << "EOF"
â•”â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•—
â•‘                                                                      â•‘
â•‘  â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ•—   â–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â•‘
â•‘  â•šâ•â•â–ˆâ–ˆâ•”â•â•â•â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•”â•â•â•â•â•â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•”â•â•â•â•â•â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•”â•â•â•â•â•â•‘
â•‘     â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—  â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—  â•‘
â•‘     â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•”â•â•â•  â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•‘â•šâ•â•â•â•â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•”â•â•â•  â•‘
â•‘     â–ˆâ–ˆâ•‘   â–ˆâ–ˆâ•‘  â–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘  â–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•‘â•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ•‘  â–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—â•‘
â•‘     â•šâ•â•   â•šâ•â•  â•šâ•â•â•šâ•â•â•â•â•â•â•â•šâ•â•  â•šâ•â•â•šâ•â•â•â•â•â•â• â•šâ•â•â•â•â•â• â•šâ•â•  â•šâ•â•â•šâ•â•â•â•â•â•â•â•‘
â•‘                                                                      â•‘
â•‘           ðŸ”¥ THE ULTIMATE SWISS ARMY KNIFE 2025 ðŸ”¥                  â•‘
â•‘              60+ Premium Tools | Zero Manual Work                   â•‘
â•‘                  The Treasure of Treasures                          â•‘
â•šâ•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
EOF
echo -e "${CYAN}[*] Comprehensive OSINT | Cloud | Breaches | APIs | Secrets | Everything${NC}\n"
}

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PROGRESS TRACKING
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
TOTAL_PHASES=15
CURRENT_PHASE=0
TOOLS_USED=0
TOOLS_SKIPPED=0

update_progress() {
    CURRENT_PHASE=$((CURRENT_PHASE + 1))
    local percentage=$((CURRENT_PHASE * 100 / TOTAL_PHASES))
    echo -e "\n${BOLD}${MAGENTA}â•”â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•—${NC}"
    echo -e "${BOLD}${MAGENTA}â•‘ PROGRESS: ${percentage}% | Phase ${CURRENT_PHASE}/${TOTAL_PHASES} | Tools Used: ${TOOLS_USED} | Skipped: ${TOOLS_SKIPPED} â•‘${NC}"
    echo -e "${BOLD}${MAGENTA}â•šâ•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•${NC}\n"
}

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# LOGGING SYSTEM
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_info() { echo -e "${BLUE}[â„¹]${NC} $1"; }
log_success() { echo -e "${GREEN}[âœ“]${NC} $1"; }
log_warning() { echo -e "${YELLOW}[âš ]${NC} $1"; }
log_error() { echo -e "${RED}[âœ—]${NC} $1"; }
log_tool() { echo -e "${CYAN}[ðŸ”§]${NC} ${BOLD}$1${NC}"; }

log_phase() {
    echo -e "\n${MAGENTA}${BOLD}â•”â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•—${NC}"
    echo -e "${MAGENTA}${BOLD}â•‘ $1"
    echo -e "${MAGENTA}${BOLD}â•šâ•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•${NC}\n"
}

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# INTELLIGENT RUN FUNCTION
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
run() {
    echo -e "\n${CYAN}â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”${NC}"
    echo -e "${CYAN}â”‚ ${YELLOW}âš¡ EXECUTING:${NC} ${BOLD}$*${NC}"
    echo -e "${CYAN}â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜${NC}\n"
    
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] CMD: $*" >> "$OUTDIR/full_command.log"
    
    # Timeout after 10 minutes to prevent hanging
    timeout 600 "$@" 2>&1 | tee -a "$OUTDIR/full_command.log" || true
    local ret=${PIPESTATUS[0]}
    
    if [ $ret -eq 0 ]; then
        echo -e "${GREEN}âœ“ Success${NC}\n"
        TOOLS_USED=$((TOOLS_USED + 1))
    elif [ $ret -eq 124 ]; then
        echo -e "${RED}â± TIMEOUT (10min limit)${NC}\n"
    else
        echo -e "${YELLOW}âš  Exit code: $ret (continuing...)${NC}\n"
    fi
    
    echo "EXIT: $ret" >> "$OUTDIR/full_command.log"
    return 0
}

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# SMART TOOL CHECKER
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
check_tool() {
    if command -v "$1" &> /dev/null; then
        log_success "$1 âœ“"
        return 0
    else
        log_warning "$1 âœ— (skipped)"
        echo "$1" >> "$OUTDIR/missing_tools.txt"
        TOOLS_SKIPPED=$((TOOLS_SKIPPED + 1))
        return 1
    fi
}

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# INITIAL SETUP
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
banner

# Input validation
validate_input() {
    if [[ -z "$DOMAIN" ]]; then
        log_error "Domain cannot be empty!"
        exit 1
    fi
    
    # Basic domain format validation
    if [[ ! "$DOMAIN" =~ ^[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
        log_error "Invalid domain format: $DOMAIN"
        exit 1
    fi
}

read -p "$(echo -e ${CYAN}ðŸŽ¯ Target domain: ${NC})" DOMAIN
read -p "$(echo -e ${CYAN}ðŸ¢ Company name [optional]: ${NC})" COMPANY
read -p "$(echo -e ${CYAN}ðŸ“§ Target email [optional]: ${NC})" TARGET_EMAIL
read -p "$(echo -e ${CYAN}ðŸ“‚ Output dir [recon_${DOMAIN}]: ${NC})" OUTDIR
OUTDIR=${OUTDIR:-recon_${DOMAIN}}

validate_input

mkdir -p "$OUTDIR"/{subdomains,dns,cloud,users,emails,documents,repos,breach,wordlists,services,screenshots,apis,secrets,mobile,social,vulnerabilities,network,testing,reports,logs,archives}

log_success "ðŸ“ Output: $(realpath "$OUTDIR")"
START_TIME=$(date +%s)
echo "Started: $(date)" > "$OUTDIR/recon_summary.txt"
echo "" > "$OUTDIR/missing_tools.txt"

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 0: AUTHORIZATION CHECK
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 0: âš ï¸  AUTHORIZATION & SCOPE VALIDATION"
update_progress

cat << EOF
${RED}${BOLD}â•”â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•—
â•‘ âš ï¸  CRITICAL LEGAL REQUIREMENTS - READ CAREFULLY âš ï¸      â•‘
â•šâ•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•${NC}

1. âœ… Written authorization obtained?
2. âœ… Scope (IPs/domains/ASNs) confirmed?
3. âœ… Cloud provider policies reviewed?
4. âœ… Shared infrastructure excluded?
5. âœ… Rate limiting/DoS protection understood?

${YELLOW}âš ï¸  STOP if ANY answer is NO! Unauthorized testing is ILLEGAL!${NC}
EOF
read -p "$(echo -e ${GREEN}Press Enter to proceed...${NC})"

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 1: PASSIVE DNS & INFRASTRUCTURE
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 1: ðŸŒ PASSIVE DNS & INFRASTRUCTURE MAPPING"
update_progress

log_tool "1.1 WHOIS & Registration Intel"
check_tool whois && run whois "$DOMAIN" > "$OUTDIR/dns/whois.txt"

log_tool "1.2 DNS Records (dig)"
if check_tool dig; then
    run dig ANY "$DOMAIN" +noall +answer > "$OUTDIR/dns/dig_any.txt"
    run dig NS "$DOMAIN" +short > "$OUTDIR/dns/nameservers.txt"
    run dig MX "$DOMAIN" +short > "$OUTDIR/dns/mailservers.txt"
    run dig TXT "$DOMAIN" +short > "$OUTDIR/dns/txt_records.txt"
    run dig SOA "$DOMAIN" +short > "$OUTDIR/dns/soa.txt"
    run dig A "$DOMAIN" +short > "$OUTDIR/dns/a_records.txt"
    run dig AAAA "$DOMAIN" +short > "$OUTDIR/dns/aaaa_records.txt"
    run dig CNAME "$DOMAIN" +short > "$OUTDIR/dns/cname_records.txt"
fi

log_tool "1.3 DNS Security (DNSSEC, SPF, DMARC, DKIM)"
if check_tool dig; then
    run dig +dnssec "$DOMAIN" @8.8.8.8 > "$OUTDIR/dns/dnssec.txt"
    run dig TXT "_dmarc.$DOMAIN" +short > "$OUTDIR/dns/dmarc.txt"
    run dig TXT "$DOMAIN" +short | grep -i spf > "$OUTDIR/dns/spf.txt" || true
    run dig TXT "default._domainkey.$DOMAIN" +short > "$OUTDIR/dns/dkim.txt" || true
    run dig TXT "_domainkey.$DOMAIN" +short > "$OUTDIR/dns/dkim_full.txt" || true
fi

log_tool "1.4 ASN & BGP Intelligence"
if check_tool whois; then
    run whois -h whois.radb.net "v4 $DOMAIN" > "$OUTDIR/network/asn_info.txt" || true
    run whois -h whois.radb.net "v6 $DOMAIN" >> "$OUTDIR/network/asn_info.txt" || true
fi

log_tool "1.5 DNS Zone Transfer Check"
if check_tool dig; then
    for ns in $(cat "$OUTDIR/dns/nameservers.txt" 2>/dev/null); do
        echo "Testing zone transfer on $ns" >> "$OUTDIR/dns/zone_transfer.txt"
        run dig @"$ns" "$DOMAIN" AXFR >> "$OUTDIR/dns/zone_transfer.txt"
    done
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 2: SUBDOMAIN ENUMERATION (15+ TOOLS)
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 2: ðŸ” SUBDOMAIN ENUMERATION - THE BEAST MODE"
update_progress

log_tool "2.1 Subfinder (ProjectDiscovery)"
check_tool subfinder && run subfinder -d "$DOMAIN" -all -recursive -o "$OUTDIR/subdomains/subfinder.txt"

log_tool "2.2 Assetfinder"
check_tool assetfinder && run assetfinder --subs-only "$DOMAIN" > "$OUTDIR/subdomains/assetfinder.txt"

log_tool "2.3 Amass - Passive"
check_tool amass && run amass enum -passive -d "$DOMAIN" -o "$OUTDIR/subdomains/amass_passive.txt"

log_tool "2.4 Amass - Active (OWASP)"
check_tool amass && run amass enum -active -d "$DOMAIN" -brute -o "$OUTDIR/subdomains/amass_active.txt"

log_tool "2.5 Sublist3r"
check_tool sublist3r && run sublist3r -d "$DOMAIN" -o "$OUTDIR/subdomains/sublist3r.txt"

log_tool "2.6 Findomain"
check_tool findomain && run findomain -t "$DOMAIN" -u "$OUTDIR/subdomains/findomain.txt"

log_tool "2.7 Chaos (ProjectDiscovery)"
check_tool chaos && run chaos -d "$DOMAIN" -o "$OUTDIR/subdomains/chaos.txt"

log_tool "2.8 Certificate Transparency (crt.sh)"
if check_tool curl && check_tool jq; then
    run curl -s "https://crt.sh/?q=%.$DOMAIN&output=json" | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u > "$OUTDIR/subdomains/crtsh.txt"
fi

log_tool "2.9 CertSpotter API"
if check_tool curl && check_tool jq; then
    run curl -s "https://api.certspotter.com/v1/issuances?domain=$DOMAIN&include_subdomains=true&expand=dns_names" | jq -r '.[].dns_names[]' | sed 's/\*\.//g' | sort -u > "$OUTDIR/subdomains/certspotter.txt"
fi

log_tool "2.10 Shosubgo"
if check_tool shosubgo && [ -n "${SHODAN_API_KEY:-}" ]; then
    run shosubgo -d "$DOMAIN" -s "$SHODAN_API_KEY" > "$OUTDIR/subdomains/shosubgo.txt"
else
    log_warning "Shosubgo skipped (SHODAN_API_KEY not set)"
fi

log_tool "2.11 GitHub Subdomains"
if check_tool github-subdomains && [ -n "${GITHUB_TOKEN:-}" ]; then
    run github-subdomains -d "$DOMAIN" -t "$GITHUB_TOKEN" -o "$OUTDIR/subdomains/github.txt"
else
    log_warning "github-subdomains skipped (GITHUB_TOKEN not set)"
fi

log_tool "2.12 DNS Brute Force (PureDNS)"
if check_tool puredns; then
    if [ -f "/usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt" ]; then
        log_info "Running DNS bruteforce (5K wordlist - faster)..."
        run puredns bruteforce /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt "$DOMAIN" -r /etc/resolv.conf -w "$OUTDIR/subdomains/puredns.txt"
    elif [ -f "/opt/wordlists/subdomains.txt" ]; then
        run puredns bruteforce /opt/wordlists/subdomains.txt "$DOMAIN" -r /etc/resolv.conf -w "$OUTDIR/subdomains/puredns.txt"
    fi
fi

log_tool "2.13 Altdns (Permutation Generation)"
if check_tool altdns && [ -f "$OUTDIR/subdomains/all_subdomains.txt" ]; then
    run altdns -i "$OUTDIR/subdomains/all_subdomains.txt" -o "$OUTDIR/subdomains/altdns_permutations.txt" -w /usr/share/dnsrecon/namelist.txt
fi

log_tool "2.14 DNSRecon"
if check_tool dnsrecon; then
    run dnsrecon -d "$DOMAIN" -t brt -D /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt -o "$OUTDIR/subdomains/dnsrecon.txt"
fi

log_tool "2.15 Knockpy"
if check_tool knockpy; then
    run knockpy "$DOMAIN" -o "$OUTDIR/subdomains/knockpy.txt"
fi

# COMBINE ALL SUBDOMAINS
log_info "ðŸ”„ Combining all subdomain sources..."
if ls "$OUTDIR/subdomains"/*.txt 1> /dev/null 2>&1; then
    cat "$OUTDIR/subdomains"/*.txt 2>/dev/null | sort -u | grep -v "^\s*$" | grep "$DOMAIN" > "$OUTDIR/subdomains/all_subdomains.txt"
    SUBDOMAIN_COUNT=$(wc -l < "$OUTDIR/subdomains/all_subdomains.txt" 2>/dev/null || echo "0")
    log_success "ðŸ“Š Total unique subdomains: ${BOLD}$SUBDOMAIN_COUNT${NC}"
    echo "Subdomains found: $SUBDOMAIN_COUNT" >> "$OUTDIR/recon_summary.txt"
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 3: DNS RESOLUTION & LIVE HOST DETECTION
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 3: ðŸŽ¯ DNS RESOLUTION & LIVE HOST VALIDATION"
update_progress

log_tool "3.1 DNS Resolution (dnsx)"
if check_tool dnsx && [ -f "$OUTDIR/subdomains/all_subdomains.txt" ]; then
    run dnsx -l "$OUTDIR/subdomains/all_subdomains.txt" -resp -a -aaaa -cname -o "$OUTDIR/subdomains/resolved_subdomains.txt"
fi

log_tool "3.2 MassDNS (Fast Resolution)"
if check_tool massdns && [ -f "$OUTDIR/subdomains/all_subdomains.txt" ]; then
    run massdns -r /usr/share/dnsrecon/namelist.txt -t A -o S "$OUTDIR/subdomains/all_subdomains.txt" > "$OUTDIR/subdomains/massdns.txt"
fi

log_tool "3.3 Live HTTP/HTTPS Detection (httpx)"
if check_tool httpx && [ -f "$OUTDIR/subdomains/all_subdomains.txt" ]; then
    run httpx -l "$OUTDIR/subdomains/all_subdomains.txt" -title -status-code -tech-detect -follow-redirects -o "$OUTDIR/services/live_hosts.txt"
    LIVE_COUNT=$(wc -l < "$OUTDIR/services/live_hosts.txt" 2>/dev/null || echo "0")
    log_success "ðŸŸ¢ Live hosts: ${BOLD}$LIVE_COUNT${NC}"
    echo "Live hosts: $LIVE_COUNT" >> "$OUTDIR/recon_summary.txt"
fi

log_tool "3.4 Httprobe (Alternate)"
if check_tool httprobe && [ -f "$OUTDIR/subdomains/all_subdomains.txt" ]; then
    cat "$OUTDIR/subdomains/all_subdomains.txt" | run httprobe > "$OUTDIR/services/httprobe.txt"
fi

log_tool "3.5 HTTPX with Screenshot Preview"
if check_tool httpx && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    run httpx -l "$OUTDIR/services/live_hosts.txt" -screenshot -o "$OUTDIR/services/live_hosts_screenshots.txt"
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 4: WEB TECHNOLOGY FINGERPRINTING
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 4: ðŸ”¬ WEB TECHNOLOGY FINGERPRINTING"
update_progress

log_tool "4.1 Wappalyzer (Technology Detection)"
if check_tool wappalyzer && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -20 "$OUTDIR/services/live_hosts.txt" | while read -r url; do
        run wappalyzer "$url" >> "$OUTDIR/services/wappalyzer.json"
    done
fi

log_tool "4.2 WhatWeb"
if check_tool whatweb && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    run whatweb -i "$OUTDIR/services/live_hosts.txt" --log-json="$OUTDIR/services/whatweb.json"
fi

log_tool "4.3 Webanalyze"
if check_tool webanalyze && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -20 "$OUTDIR/services/live_hosts.txt" | while read -r url; do
        run webanalyze -host "$url" -output json >> "$OUTDIR/services/webanalyze.json"
    done
fi

log_tool "4.4 Retire.js (JS Library Vulnerabilities)"
if check_tool retire && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -10 "$OUTDIR/services/live_hosts.txt" | while read -r url; do
        run retire --js --jspath "$url" >> "$OUTDIR/vulnerabilities/retirejs.txt"
    done
fi

log_tool "4.5 WAF Detection (wafw00f)"
if check_tool wafw00f && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -20 "$OUTDIR/services/live_hosts.txt" | while read -r url; do
        run wafw00f "$url" >> "$OUTDIR/services/waf_detection.txt"
    done
fi

log_tool "4.6 BuiltWith"
if check_tool curl && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -10 "$OUTDIR/services/live_hosts.txt" | while read -r url; do
        run curl -s "https://builtwith.com/relationships/$url" > "$OUTDIR/services/builtwith_$url.html"
    done
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 5: VISUAL RECONNAISSANCE
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 5: ðŸ“¸ VISUAL RECONNAISSANCE & SCREENSHOTS"
update_progress

log_tool "5.1 GoWitness (Screenshots)"
if check_tool gowitness && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    run gowitness file -f "$OUTDIR/services/live_hosts.txt" -P "$OUTDIR/screenshots/gowitness/" --fullpage --disable-logging
fi

log_tool "5.2 EyeWitness"
if check_tool eyewitness && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    run eyewitness --web -f "$OUTDIR/services/live_hosts.txt" -d "$OUTDIR/screenshots/eyewitness" --no-prompt
fi

log_tool "5.3 Aquatone"
if check_tool aquatone && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    cat "$OUTDIR/services/live_hosts.txt" | run aquatone -out "$OUTDIR/screenshots/aquatone"
fi

log_tool "5.4 WebScreenshot"
if check_tool webscreenshot && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    run webscreenshot -i "$OUTDIR/services/live_hosts.txt" -o "$OUTDIR/screenshots/webscreenshot/"
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 6: URL & ENDPOINT DISCOVERY
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 6: ðŸŒ URL & ENDPOINT DISCOVERY"
update_progress

mkdir -p "$OUTDIR/urls"

log_tool "6.1 GAU (GetAllUrls)"
check_tool gau && run gau "$DOMAIN" --threads 10 --subs > "$OUTDIR/urls/gau_urls.txt"

log_tool "6.2 WaybackUrls"
check_tool waybackurls && run waybackurls "$DOMAIN" > "$OUTDIR/urls/wayback_urls.txt"

log_tool "6.3 Hakrawler (Spider)"
if check_tool hakrawler && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -20 "$OUTDIR/services/live_hosts.txt" | run hakrawler -depth 3 -plain > "$OUTDIR/urls/hakrawler_urls.txt"
fi

log_tool "6.4 Gospider"
if check_tool gospider && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -10 "$OUTDIR/services/live_hosts.txt" | while read -r url; do
        run gospider -s "$url" -d 3 -o "$OUTDIR/urls/gospider"
    done
fi

log_tool "6.5 Katana (Fast Crawler)"
if check_tool katana && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    run katana -list "$OUTDIR/services/live_hosts.txt" -d 5 -o "$OUTDIR/urls/katana_urls.txt"
fi

log_tool "6.6 ParamSpider"
if check_tool paramspider; then
    run paramspider -d "$DOMAIN" -o "$OUTDIR/urls/paramspider"
fi

# Combine all URLs
log_info "ðŸ”„ Combining all discovered URLs..."
if ls "$OUTDIR/urls"/*.txt 1> /dev/null 2>&1; then
    cat "$OUTDIR/urls"/*.txt 2>/dev/null | sort -u > "$OUTDIR/urls/all_urls.txt"
    URL_COUNT=$(wc -l < "$OUTDIR/urls/all_urls.txt" 2>/dev/null || echo "0")
    log_success "ðŸ“Š Total URLs: ${BOLD}$URL_COUNT${NC}"
    echo "URLs discovered: $URL_COUNT" >> "$OUTDIR/recon_summary.txt"
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 7: PARAMETER & ENDPOINT ANALYSIS
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 7: ðŸ”§ PARAMETER & ENDPOINT ANALYSIS"
update_progress

log_tool "7.1 GF (Pattern Matching for Vulns)"
if check_tool gf && [ -f "$OUTDIR/urls/all_urls.txt" ]; then
    mkdir -p "$OUTDIR/vulnerabilities/gf"
    gf xss "$OUTDIR/urls/all_urls.txt" > "$OUTDIR/vulnerabilities/gf/xss.txt" 2>/dev/null || true
    gf sqli "$OUTDIR/urls/all_urls.txt" > "$OUTDIR/vulnerabilities/gf/sqli.txt" 2>/dev/null || true
    gf ssrf "$OUTDIR/urls/all_urls.txt" > "$OUTDIR/vulnerabilities/gf/ssrf.txt" 2>/dev/null || true
    gf redirect "$OUTDIR/urls/all_urls.txt" > "$OUTDIR/vulnerabilities/gf/redirect.txt" 2>/dev/null || true
    gf lfi "$OUTDIR/urls/all_urls.txt" > "$OUTDIR/vulnerabilities/gf/lfi.txt" 2>/dev/null || true
    gf rce "$OUTDIR/urls/all_urls.txt" > "$OUTDIR/vulnerabilities/gf/rce.txt" 2>/dev/null || true
    gf idor "$OUTDIR/urls/all_urls.txt" > "$OUTDIR/vulnerabilities/gf/idor.txt" 2>/dev/null || true
    gf debug_logic "$OUTDIR/urls/all_urls.txt" > "$OUTDIR/vulnerabilities/gf/debug_logic.txt" 2>/dev/null || true
fi

log_tool "7.2 Unfurl (URL Parsing)"
if check_tool unfurl && [ -f "$OUTDIR/urls/all_urls.txt" ]; then
    cat "$OUTDIR/urls/all_urls.txt" | unfurl domains | sort -u > "$OUTDIR/urls/discovered_domains.txt"
    cat "$OUTDIR/urls/all_urls.txt" | unfurl paths | sort -u > "$OUTDIR/urls/unique_paths.txt"
    cat "$OUTDIR/urls/all_urls.txt" | unfurl keys | sort -u > "$OUTDIR/urls/unique_params.txt"
    cat "$OUTDIR/urls/all_urls.txt" | unfurl format '%s://%d%p' | sort -u > "$OUTDIR/urls/cleaned_urls.txt"
fi

log_tool "7.3 Qsreplace (Parameter Mutation)"
if check_tool qsreplace && [ -f "$OUTDIR/urls/all_urls.txt" ]; then
    cat "$OUTDIR/urls/all_urls.txt" | qsreplace "FUZZ" > "$OUTDIR/urls/fuzzable_urls.txt"
fi

log_tool "7.4 Arjun (Parameter Discovery)"
if check_tool arjun && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -5 "$OUTDIR/services/live_hosts.txt" | while read -r url; do
        run arjun -u "$url" -o "$OUTDIR/urls/arjun_$(echo $url | sed 's|https\?://||' | tr '/' '_').json"
    done
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 8: API & SECRET DISCOVERY
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 8: ðŸ”‘ API & SECRET DISCOVERY"
update_progress

log_tool "8.1 Secret Finder (JS Secrets)"
if check_tool secretfinder && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -10 "$OUTDIR/services/live_hosts.txt" | while read -r url; do
        run secretfinder -i "$url" -o cli >> "$OUTDIR/secrets/secretfinder.txt"
    done
fi

log_tool "8.2 LinkFinder (JS Endpoints)"
if check_tool linkfinder && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -10 "$OUTDIR/services/live_hosts.txt" | while read -r url; do
        run linkfinder -i "$url" -o cli >> "$OUTDIR/apis/linkfinder.txt"
    done
fi

log_tool "8.3 Trufflehog (Git Secrets)"
if check_tool trufflehog && [ -f "$OUTDIR/urls/all_urls.txt" ]; then
    grep -i "github.com" "$OUTDIR/urls/all_urls.txt" | head -5 | while read -r repo; do
        run trufflehog git "$repo" --only-verified >> "$OUTDIR/secrets/trufflehog.txt"
    done
fi

log_tool "8.4 GitLeaks (Secret Scanning)"
if check_tool gitleaks; then
    log_info "GitLeaks available - run manually: gitleaks detect --source /path/to/repo"
fi

log_tool "8.5 Nuclei - Exposed Panels & Secrets"
if check_tool nuclei && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    run nuclei -l "$OUTDIR/services/live_hosts.txt" -t exposures/ -t exposed-panels/ -t misconfiguration/ -o "$OUTDIR/vulnerabilities/nuclei_exposures.txt"
fi

log_tool "8.6 JSMiner"
if check_tool python3 && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -10 "$OUTDIR/services/live_hosts.txt" | while read -r url; do
        python3 -c "import requests; import re; r = requests.get('$url'); print(re.findall(r'api[^\"']*key[^\"']*[\"'\ ]', r.text))" >> "$OUTDIR/secrets/jsminer.txt" 2>/dev/null || true
    done
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 9: CLOUD ASSET DISCOVERY
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 9: â˜ï¸  CLOUD INFRASTRUCTURE HUNTING"
update_progress

log_tool "9.1 Cloud Enum (AWS/Azure/GCP)"
if check_tool cloud_enum; then
    run cloud_enum -k "$DOMAIN" -k "$COMPANY" -l "$OUTDIR/cloud/cloud_enum.txt"
fi

log_tool "9.2 S3Scanner (AWS Buckets)"
if check_tool s3scanner; then
    echo "$DOMAIN" | run s3scanner scan > "$OUTDIR/cloud/s3scanner.txt"
fi

log_tool "9.3 CloudBrute"
if check_tool cloudbrute; then
    run cloudbrute -d "$DOMAIN" -w /usr/share/wordlists/cloud_prefixes.txt -o "$OUTDIR/cloud/cloudbrute.txt"
fi

log_tool "9.4 Detect AWS/Azure/GCP Hosts"
if [ -f "$OUTDIR/subdomains/all_subdomains.txt" ]; then
    grep -iE "(amazonaws|cloudfront|s3|azurewebsites|blob\.core|storage\.googleapis)" "$OUTDIR/subdomains/all_subdomains.txt" > "$OUTDIR/cloud/cloud_hosts.txt" || true
fi

log_tool "9.5 S3 Bucket Fuzzing"
cat << 'S3FUZZ' > "$OUTDIR/cloud/s3_bucket_checks.sh"
#!/bin/bash
DOMAIN="$1"
echo "[*] Checking S3 buckets for domain: $DOMAIN"
for prefix in www dev staging prod backup files assets images media uploads static s3 bucket; do
    for suffix in "" "-$DOMAIN" ".$DOMAIN"; do
        bucket="${prefix}${suffix}"
        # Check various S3 formats
        endpoints=(
            "https://${bucket}.s3.amazonaws.com"
            "https://s3.amazonaws.com/${bucket}"
            "https://${bucket}.s3-website-us-east-1.amazonaws.com"
            "https://${bucket}.s3-website-us-west-2.amazonaws.com"
        )
        
        for endpoint in "${endpoints[@]}"; do
            if curl -s -I "$endpoint" | grep -q "200\|403"; then
                echo "[+] FOUND: $endpoint"
            fi
        done
    done
done
S3FUZZ
chmod +x "$OUTDIR/cloud/s3_bucket_checks.sh"
run bash "$OUTDIR/cloud/s3_bucket_checks.sh" "$DOMAIN"

log_tool "9.6 CloudFlare Enumeration"
if check_tool curl; then
    run curl -s "https://www.cloudflare.com/ips-v4" > "$OUTDIR/cloud/cloudflare_ips.txt"
    run curl -s "https://www.cloudflare.com/ips-v6" >> "$OUTDIR/cloud/cloudflare_ips.txt"
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 10: EMAIL INTELLIGENCE & BREACH DATA
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 10: ðŸ“§ EMAIL INTELLIGENCE & BREACH DATA HUNTING"
update_progress

log_tool "10.1 Email Format Discovery (theHarvester)"
if check_tool theHarvester; then
    run theHarvester -d "$DOMAIN" -b all -f "$OUTDIR/emails/harvester_emails.txt"
fi

log_tool "10.2 Hunter.io API"
if check_tool curl && [ -n "${HUNTER_API_KEY:-}" ]; then
    run curl -s "https://api.hunter.io/v2/domain-search?domain=$DOMAIN&api_key=$HUNTER_API_KEY" | jq '.' > "$OUTDIR/emails/hunterio.json"
else
    log_warning "Hunter.io skipped (HUNTER_API_KEY not set)"
fi

log_tool "10.3 Breach Data Check (HIBP)"
if check_tool hibp; then
    if [ -n "$TARGET_EMAIL" ]; then
        run hibp --email "$TARGET_EMAIL" > "$OUTDIR/breach/hibp_results.txt"
    fi
fi

log_tool "10.4 Email Format Validation"
if check_tool curl; then
    # Office 365 user enumeration technique 
    run curl -s "https://login.microsoftonline.com/getuserrealm.srf?login=test@$DOMAIN&xml=1" > "$OUTDIR/emails/o365_userrealm.xml" || true
fi

log_tool "10.5 Social Media Email Search (Sherlock)"
if check_tool sherlock; then
    if [ -n "$COMPANY" ]; then
        run sherlock "$COMPANY" --nsfw --csv -o "$OUTDIR/social/sherlock_results.csv"
    fi
fi

log_tool "10.6 Breach Compilation Search"
if check_tool curl; then
    # Check breach compilation sites
    run curl -s "https://api.dehashed.com/search?query=domain:$DOMAIN" > "$OUTDIR/breach/dehashed_results.json" || true
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 11: NETWORK & PORT SCANNING
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 11: ðŸŒ NETWORK SCANNING & PORT DISCOVERY"
update_progress

log_tool "11.1 Full Port Scan (Nmap)"
if check_tool nmap; then
    run nmap -sS -T4 -A -p- "$DOMAIN" -oA "$OUTDIR/network/nmap_full"
fi

log_tool "11.2 Top Ports Quick Scan"
if check_tool nmap; then
    run nmap -sS -T4 -A --top-ports 1000 "$DOMAIN" -oA "$OUTDIR/network/nmap_top_ports"
fi

log_tool "11.3 UDP Port Scan"
if check_tool nmap; then
    run nmap -sU -T4 --top-ports 100 "$DOMAIN" -oA "$OUTDIR/network/nmap_udp"
fi

log_tool "11.4 Service Version Detection"
if check_tool nmap; then
    run nmap -sV -sC -O "$DOMAIN" -oA "$OUTDIR/network/nmap_service_scan"
fi

log_tool "11.5 Vulnerability Script Scan"
if check_tool nmap; then
    run nmap --script vuln "$DOMAIN" -oA "$OUTDIR/network/nmap_vuln_scan"
fi

log_tool "11.6 Naabu (Fast Port Scanner)"
if check_tool naabu; then
    run naabu -host "$DOMAIN" -o "$OUTDIR/network/naabu_scan.txt"
fi

log_tool "11.7 Masscan (Internet-scale port scanner)"
if check_tool masscan; then
    run masscan -p1-65535 "$DOMAIN" --rate=1000 -oG "$OUTDIR/network/masscan_scan.txt"
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 12: VULNERABILITY ASSESSMENT
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 12: ðŸŽ¯ VULNERABILITY ASSESSMENT & EXPLOITATION CHECKS"
update_progress

log_tool "12.1 Nuclei Template Scanning"
if check_tool nuclei && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    run nuclei -l "$OUTDIR/services/live_hosts.txt" -t cves/ -t vulnerabilities/ -o "$OUTDIR/vulnerabilities/nuclei_cves.txt"
    run nuclei -l "$OUTDIR/services/live_hosts.txt" -t exposures/ -o "$OUTDIR/vulnerabilities/nuclei_exposures.txt"
    run nuclei -l "$OUTDIR/services/live_hosts.txt" -t misconfiguration/ -o "$OUTDIR/vulnerabilities/nuclei_misconfig.txt"
fi

log_tool "12.2 Nikto Web Scanner"
if check_tool nikto && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -10 "$OUTDIR/services/live_hosts.txt" | while read -r url; do
        run nikto -h "$url" -o "$OUTDIR/vulnerabilities/nikto_$(echo $url | sed 's|https\?://||' | tr '/' '_').txt"
    done
fi

log_tool "12.3 XSS Scanning (dalfox)"
if check_tool dalfox && [ -f "$OUTDIR/urls/all_urls.txt" ]; then
    run dalfox file "$OUTDIR/urls/all_urls.txt" -o "$OUTDIR/vulnerabilities/dalfox_xss.txt"
fi

log_tool "12.4 SQLi Scanning (sqlmap)"
if check_tool sqlmap && [ -f "$OUTDIR/vulnerabilities/gf/sqli.txt" ]; then
    head -5 "$OUTDIR/vulnerabilities/gf/sqli.txt" | while read -r url; do
        run sqlmap -u "$url" --batch --level=2 --risk=2 -o "$OUTDIR/vulnerabilities/sqlmap_$(echo $url | md5sum | cut -d' ' -f1).txt"
    done
fi

log_tool "12.5 SSL/TLS Security Check (testssl)"
if check_tool testssl; then
    run testssl "$DOMAIN" > "$OUTDIR/vulnerabilities/ssl_test.txt"
fi

log_tool "12.6 Jaeles Scanning"
if check_tool jaeles && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    run jaeles scan -s -u "$OUTDIR/services/live_hosts.txt" -o "$OUTDIR/vulnerabilities/jaeles_scan.txt"
fi

log_tool "12.7 CSP Scanner"
if check_tool cspscanner && [ -f "$OUTDIR/services/live_hosts.txt" ]; then
    head -10 "$OUTDIR/services/live_hosts.txt" | while read -r url; do
        run cspscanner -u "$url" >> "$OUTDIR/vulnerabilities/csp_issues.txt"
    done
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 13: MOBILE & SOCIAL MEDIA RECON
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 13: ðŸ“± MOBILE & SOCIAL MEDIA RECONNAISSANCE"
update_progress

log_tool "13.1 Mobile App Discovery"
if check_tool curl; then
    # Check for mobile app associations
    echo "Checking mobile app stores for: $COMPANY" > "$OUTDIR/mobile/app_discovery.txt"
    echo "Google Play: https://play.google.com/store/search?q=$COMPANY" >> "$OUTDIR/mobile/app_discovery.txt"
    echo "Apple App Store: https://www.apple.com/us/search/$COMPANY?src=globalnav" >> "$OUTDIR/mobile/app_discovery.txt"
fi

log_tool "13.2 Social Media Profiling"
if check_tool python3; then
    cat << 'SOCIALPY' > "$OUTDIR/social/social_media_scraper.py"
#!/usr/bin/env python3
import requests
import json
import sys

company = sys.argv[1] if len(sys.argv) > 1 else ""

domains = [
    "twitter.com", "linkedin.com", "facebook.com", 
    "instagram.com", "youtube.com", "github.com"
]

results = {}
for domain in domains:
    try:
        url = f"https://{domain}/{company}"
        response = requests.get(url, timeout=10, headers={'User-Agent': 'Mozilla/5.0'})
        if response.status_code in [200, 301, 302]:
            results[domain] = f"Potential profile exists - Status: {response.status_code}"
        else:
            results[domain] = f"Not found - Status: {response.status_code}"
    except Exception as e:
        results[domain] = f"Error: {str(e)}"

print(json.dumps(results, indent=2))
with open("social_media_results.json", "w") as f:
    json.dump(results, f, indent=2)
SOCIALPY
    run python3 "$OUTDIR/social/social_media_scraper.py" "$COMPANY"
fi

log_tool "13.3 Domain History (WHOIS History)"
if check_tool whois; then
    run whois -h whois.domaintools.com "$DOMAIN" > "$OUTDIR/dns/whois_history.txt" || true
fi

log_tool "13.4 Archive.org Historical Data"
if check_tool curl; then
    run curl -s "https://web.archive.org/cdx/search/cdx?url=*.$DOMAIN/*&output=text&fl=original,timestamp" > "$OUTDIR/social/archive_urls.txt" || true
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 14: DATA CORRELATION & REPORTING
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 14: ðŸ“Š DATA CORRELATION & INTELLIGENCE REPORTING"
update_progress

log_tool "14.1 Data Correlation Engine"
if check_tool python3; then
    cat << 'CORRELATION' > "$OUTDIR/correlation_engine.py"
#!/usr/bin/env python3
import json
import os
import glob
from collections import defaultdict

def correlate_data(output_dir):
    findings = defaultdict(list)
    
    # Correlate subdomains with technologies
    if os.path.exists(f"{output_dir}/services/live_hosts.txt"):
        with open(f"{output_dir}/services/live_hosts.txt", "r") as f:
            for line in f:
                findings["live_hosts"].append(line.strip())
    
    # Count vulnerabilities
    vuln_count = 0
    for vuln_file in glob.glob(f"{output_dir}/vulnerabilities/*.txt"):
        try:
            with open(vuln_file, "r") as f:
                lines = f.readlines()
                vuln_count += len([l for l in lines if l.strip() and not l.startswith('#')])
        except:
            pass
    
    # Generate executive summary
    summary = {
        "target_domain": os.path.basename(output_dir).replace('recon_', ''),
        "total_subdomains": len(findings.get("live_hosts", [])),
        "vulnerabilities_found": vuln_count,
        "critical_findings": [],
        "scan_metadata": {
            "output_directory": output_dir,
            "phases_completed": 14
        }
    }
    
    with open(f"{output_dir}/reports/correlation_report.json", "w") as f:
        json.dump(summary, f, indent=2)
    
    print(f"Correlation complete: {summary['total_subdomains']} subdomains, {vuln_count} vulnerabilities")

correlate_data("$OUTDIR")
CORRELATION
    run python3 "$OUTDIR/correlation_engine.py"
fi

log_tool "14.2 HTML Report Generation"
if check_tool python3; then
    cat << 'HTMLREPORT' > "$OUTDIR/generate_html_report.py"
#!/usr/bin/env python3
import json
import os
from datetime import datetime

def generate_html_report(output_dir):
    html = f'''
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Recon Report for {output_dir}</title>
        <style>
            body {{ font-family: Arial, sans-serif; margin: 20px; background: #f5f5f5; }}
            .container {{ max-width: 1200px; margin: 0 auto; background: white; padding: 20px; border-radius: 10px; }}
            .header {{ background: #2c3e50; color: white; padding: 20px; border-radius: 5px; text-align: center; }}
            .section {{ margin: 20px 0; padding: 15px; border-left: 4px solid #3498db; background: #ecf0f1; }}
            .critical {{ border-left-color: #e74c3c; background: #fadbd8; }}
            .warning {{ border-left-color: #f39c12; background: #fdebd0; }}
            .success {{ border-left-color: #27ae60; background: #d5f4e6; }}
            pre {{ background: #2c3e50; color: white; padding: 15px; border-radius: 5px; overflow-x: auto; }}
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <h1>ðŸš€ Ultimate Recon Swiss Army Knife 2025</h1>
                <h2>Comprehensive Reconnaissance Report</h2>
                <p>Generated on: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}</p>
            </div>
            
            <div class="section">
                <h3>ðŸ“Š Executive Summary</h3>
                <p><strong>Target:</strong> {os.path.basename(output_dir).replace('recon_', '')}</p>
                <p><strong>Scan Date:</strong> {datetime.now().strftime("%Y-%m-%d")}</p>
                <p><strong>Output Directory:</strong> {output_dir}</p>
            </div>
            
            <div class="section success">
                <h3>âœ… Scan Completed Successfully</h3>
                <p>The comprehensive reconnaissance scan has finished executing all phases.</p>
            </div>
            
            <div class="section warning">
                <h3>ðŸ“ Output Structure</h3>
                <pre>
{output_dir}/
â”œâ”€â”€ subdomains/          # Discovered subdomains
â”œâ”€â”€ services/            # Live hosts and services
â”œâ”€â”€ vulnerabilities/     # Security findings
â”œâ”€â”€ cloud/               # Cloud infrastructure
â”œâ”€â”€ secrets/             # API keys and secrets
â”œâ”€â”€ network/             # Port scans and network info
â””â”€â”€ reports/             # This report and correlations
                </pre>
            </div>
            
            <div class="section">
                <h3>ðŸŽ¯ Next Steps</h3>
                <ol>
                    <li>Review vulnerabilities in /vulnerabilities/</li>
                    <li>Check for exposed secrets in /secrets/</li>
                    <li>Analyze cloud assets in /cloud/</li>
                    <li>Validate subdomain takeovers</li>
                    <li>Perform manual testing on critical endpoints</li>
                </ol>
            </div>
            
            <div class="section critical">
                <h3>âš ï¸ Legal Notice</h3>
                <p>This report contains information obtained through authorized security testing.</p>
                <p>Ensure you have proper authorization before acting on any findings.</p>
            </div>
        </div>
    </body>
    </html>
    '''
    
    os.makedirs(f"{output_dir}/reports", exist_ok=True)
    with open(f"{output_dir}/reports/recon_report.html", "w") as f:
        f.write(html)

generate_html_report("$OUTDIR")
HTMLREPORT
    run python3 "$OUTDIR/generate_html_report.py"
fi

log_tool "14.3 Executive Summary"
if check_tool python3; then
    END_TIME=$(date +%s)
    DURATION=$((END_TIME - START_TIME))
    
    # Count findings
    SUBDOMAIN_COUNT=$(wc -l < "$OUTDIR/subdomains/all_subdomains.txt" 2>/dev/null || echo "0")
    LIVE_COUNT=$(wc -l < "$OUTDIR/services/live_hosts.txt" 2>/dev/null || echo "0")
    URL_COUNT=$(wc -l < "$OUTDIR/urls/all_urls.txt" 2>/dev/null || echo "0")
    
    cat << SUMMARY > "$OUTDIR/reports/executive_summary.txt"
â•”â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•—
â•‘                      EXECUTIVE SUMMARY                               â•‘
â•šâ•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•

TARGET INFORMATION:
â€¢ Domain: $DOMAIN
â€¢ Company: $COMPANY
â€¢ Email: $TARGET_EMAIL

SCAN METRICS:
â€¢ Scan Duration: $DURATION seconds
â€¢ Start Time: $(date -d @$START_TIME)
â€¢ End Time: $(date -d @$END_TIME)
â€¢ Tools Executed: $TOOLS_USED
â€¢ Tools Skipped: $TOOLS_SKIPPED
â€¢ Phases Completed: $CURRENT_PHASE/$TOTAL_PHASES

FINDINGS SUMMARY:
â€¢ Subdomains Discovered: $SUBDOMAIN_COUNT
â€¢ Live Hosts: $LIVE_COUNT
â€¢ URLs Discovered: $URL_COUNT
â€¢ Cloud Assets: $(wc -l < "$OUTDIR/cloud/cloud_hosts.txt" 2>/dev/null || echo "0")

CRITICAL OUTPUTS:
â€¢ Subdomains: $OUTDIR/subdomains/all_subdomains.txt
â€¢ Live Services: $OUTDIR/services/live_hosts.txt
â€¢ Vulnerabilities: $OUTDIR/vulnerabilities/
â€¢ Cloud Assets: $OUTDIR/cloud/
â€¢ Secrets: $OUTDIR/secrets/

NEXT STEPS:
1. Review vulnerabilities in $OUTDIR/vulnerabilities/
2. Check secrets in $OUTDIR/secrets/
3. Analyze network scan results in $OUTDIR/network/
4. Review cloud assets in $OUTDIR/cloud/
5. Validate subdomain takeovers
6. Perform manual penetration testing

LEGAL DISCLAIMER:
This information was obtained through authorized security testing.
Ensure you have proper authorization before using any findings.

Generated by Ultimate Recon Swiss Army Knife 2025
SUMMARY
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# PHASE 15: QUALITY ASSURANCE & TESTING FRAMEWORK
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "PHASE 15: ðŸ§ª QUALITY ASSURANCE & VALIDATION"
update_progress

log_tool "15.1 Input Validation Tests"
# Test input validation function
test_input_validation() {
    echo "=== INPUT VALIDATION TESTS ===" > "$OUTDIR/testing/validation_tests.txt"
    echo "Testing domain: $DOMAIN" >> "$OUTDIR/testing/validation_tests.txt"
    echo "Testing company: $COMPANY" >> "$OUTDIR/testing/validation_tests.txt"
    echo "Testing output directory: $OUTDIR" >> "$OUTDIR/testing/validation_tests.txt"
    
    # Test directory structure
    if [ -d "$OUTDIR" ]; then
        echo "âœ“ Output directory created successfully" >> "$OUTDIR/testing/validation_tests.txt"
    else
        echo "âœ— Output directory creation failed" >> "$OUTDIR/testing/validation_tests.txt"
    fi
    
    # Test subdirectory creation
    for dir in subdomains services vulnerabilities cloud secrets network; do
        if [ -d "$OUTDIR/$dir" ]; then
            echo "âœ“ $dir directory exists" >> "$OUTDIR/testing/validation_tests.txt"
        else
            echo "âœ— $dir directory missing" >> "$OUTDIR/testing/validation_tests.txt"
        fi
    done
}
test_input_validation

log_tool "15.2 Tool Dependency Verification"
if check_tool python3; then
    cat << 'DEPSCHECK' > "$OUTDIR/testing/dependency_checker.py"
#!/usr/bin/env python3
import shutil
import json
import os

required_tools = [
    "curl", "nmap", "dig", "whois", "subfinder", 
    "amass", "httpx", "nuclei", "gau", "waybackurls",
    "assetfinder", "findomain", "chaos", "dnsx", "massdns",
    "gowitness", "aquatone", "gospider", "katana", "gf",
    "unfurl", "qsreplace", "secretfinder", "linkfinder",
    "trufflehog", "cloud_enum", "s3scanner", "theHarvester",
    "hibp", "sherlock", "naabu", "masscan", "nikto",
    "dalfox", "sqlmap", "testssl", "jaeles", "cspscanner"
]

available_tools = {}
for tool in required_tools:
    available_tools[tool] = bool(shutil.which(tool))

results = {
    "total_tools": len(required_tools),
    "available_tools": sum(available_tools.values()),
    "missing_tools": [tool for tool, available in available_tools.items() if not available],
    "coverage_percentage": round((sum(available_tools.values()) / len(required_tools)) * 100, 2)
}

print(f"Tool Availability: {results['available_tools']}/{results['total_tools']} ({results['coverage_percentage']}%)")

if results['missing_tools']:
    print("Missing tools:")
    for tool in results['missing_tools']:
        print(f"  - {tool}")

with open("$OUTDIR/testing/tool_availability.json", "w") as f:
    json.dump(results, f, indent=2)

DEPSCHECK
    run python3 "$OUTDIR/testing/dependency_checker.py"
fi

log_tool "15.3 Output Quality Checks"
if check_tool python3; then
    cat << 'QUALITY' > "$OUTDIR/testing/quality_checks.py"
#!/usr/bin/env python3
import os
import json
import glob

def check_output_quality(output_dir):
    quality_report = {
        "missing_files": [],
        "empty_files": [],
        "large_files": [],
        "expected_files_found": [],
        "summary": {}
    }
    
    expected_files = [
        "subdomains/all_subdomains.txt",
        "services/live_hosts.txt", 
        "urls/all_urls.txt",
        "vulnerabilities/nuclei_cves.txt",
        "dns/whois.txt",
        "dns/nameservers.txt"
    ]
    
    for expected_file in expected_files:
        filepath = os.path.join(output_dir, expected_file)
        if not os.path.exists(filepath):
            quality_report["missing_files"].append(expected_file)
        elif os.path.getsize(filepath) == 0:
            quality_report["empty_files"].append(expected_file)
        elif os.path.getsize(filepath) > 10485760:  # 10MB
            quality_report["large_files"].append(f"{expected_file} ({round(os.path.getsize(filepath)/1048576, 2)}MB)")
        else:
            quality_report["expected_files_found"].append(expected_file)
    
    # Count files in each directory
    for root, dirs, files in os.walk(output_dir):
        dir_name = os.path.relpath(root, output_dir)
        if dir_name == '.':
            dir_name = 'root'
        quality_report["summary"][dir_name] = len(files)
    
    quality_report["quality_score"] = len(quality_report["expected_files_found"]) / len(expected_files) * 100
    
    with open(os.path.join(output_dir, "testing/quality_report.json"), "w") as f:
        json.dump(quality_report, f, indent=2)
    
    print(f"Quality Score: {quality_report['quality_score']:.1f}%")
    print(f"Missing: {len(quality_report['missing_files'])} | Empty: {len(quality_report['empty_files'])} | Large: {len(quality_report['large_files'])}")
    
    return quality_report

check_output_quality("$OUTDIR")
QUALITY
    run python3 "$OUTDIR/testing/quality_checks.py"
fi

log_tool "15.4 Performance Benchmarking"
if check_tool python3; then
    cat << 'PERF' > "$OUTDIR/testing/performance_metrics.py"
#!/usr/bin/env python3
import time
import json
import os

start_time = $START_TIME
end_time = $(date +%s)
duration = end_time - start_time

performance_data = {
    "start_time": start_time,
    "end_time": end_time,
    "duration_seconds": duration,
    "duration_minutes": round(duration / 60, 2),
    "duration_hours": round(duration / 3600, 2),
    "tools_used": $TOOLS_USED,
    "tools_skipped": $TOOLS_SKIPPED,
    "phases_completed": $CURRENT_PHASE,
    "efficiency_score": round(($TOOLS_USED / ($TOOLS_USED + $TOOLS_SKIPPED)) * 100, 2) if ($TOOLS_USED + $TOOLS_SKIPPED) > 0 else 0,
    "performance_rating": "Excellent" if duration < 1800 else "Good" if duration < 3600 else "Average",
    "output_size_mb": round(sum(os.path.getsize(os.path.join(dirpath, filename)) for dirpath, dirnames, filenames in os.walk("$OUTDIR") for filename in filenames) / (1024*1024), 2)
}

with open("$OUTDIR/testing/performance_metrics.json", "w") as f:
    json.dump(performance_data, f, indent=2)

print(f"Performance Report:")
print(f"  Duration: {performance_data['duration_minutes']} minutes")
print(f"  Tools Used: {performance_data['tools_used']}/{performance_data['tools_used'] + performance_data['tools_skipped']}")
print(f"  Efficiency: {performance_data['efficiency_score']}%")
print(f"  Output Size: {performance_data['output_size_mb']} MB")
print(f"  Rating: {performance_data['performance_rating']}")
PERF
    run python3 "$OUTDIR/testing/performance_metrics.py"
fi

log_tool "15.5 Automated Email Reporting"
if check_tool mutt && [ -n "$TARGET_EMAIL" ]; then
    # Create email report 
    cat << EMAIL > "$OUTDIR/testing/send_report.sh"
#!/bin/bash
recipient="$TARGET_EMAIL"
subject="ðŸš€ Recon Complete: $DOMAIN - Ultimate Swiss Army Knife"
body="Reconnaissance scan for $DOMAIN completed successfully!

ðŸ“Š SCAN SUMMARY:
â€¢ Domain: $DOMAIN
â€¢ Duration: $(($(date +%s) - $START_TIME)) seconds
â€¢ Tools Used: $TOOLS_USED
â€¢ Tools Skipped: $TOOLS_SKIPPED
â€¢ Phases Completed: $CURRENT_PHASE/$TOTAL_PHASES

ðŸ“ OUTPUT LOCATION:
$(realpath $OUTDIR)

ðŸŽ¯ KEY FINDINGS:
â€¢ Subdomains: $(wc -l < "$OUTDIR/subdomains/all_subdomains.txt" 2>/dev/null || echo "0")
â€¢ Live Hosts: $(wc -l < "$OUTDIR/services/live_hosts.txt" 2>/dev/null || echo "0") 
â€¢ URLs: $(wc -l < "$OUTDIR/urls/all_urls.txt" 2>/dev/null || echo "0")

âš ï¸ NEXT STEPS:
1. Review vulnerabilities in vulnerabilities/ directory
2. Check for exposed secrets
3. Analyze cloud assets
4. Perform manual validation

Generated by Ultimate Recon Swiss Army Knife 2025
The Treasure of Treasures ðŸ´â€â˜ ï¸"

echo -e "$body" | mutt -s "$subject" -- "$recipient" -a "$OUTDIR/reports/executive_summary.txt"
EMAIL
    chmod +x "$OUTDIR/testing/send_report.sh"
    log_info "Email report script created: $OUTDIR/testing/send_report.sh"
    
    # Ask user if they want to send the email
    read -p "$(echo -e ${YELLOW}Send email report to $TARGET_EMAIL? [y/N]: ${NC})" -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        run bash "$OUTDIR/testing/send_report.sh"
    fi
else
    log_info "Email reporting not configured (mutt not installed or no email provided)"
fi

# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# FINAL SUMMARY & NEXT STEPS
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
log_phase "ðŸŽ‰ RECONNAISSANCE COMPLETE - THE BEAST HAS FEASTED!"

echo -e "${GREEN}${BOLD}â•”â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•—"
echo -e "â•‘                         MISSION ACCOMPLISHED!                          â•‘"
echo -e "â•šâ•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•${NC}"

# Final statistics
END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))
SUBDOMAIN_COUNT=$(wc -l < "$OUTDIR/subdomains/all_subdomains.txt" 2>/dev/null || echo "0")
LIVE_COUNT=$(wc -l < "$OUTDIR/services/live_hosts.txt" 2>/dev/null || echo "0")
URL_COUNT=$(wc -l < "$OUTDIR/urls/all_urls.txt" 2>/dev/null || echo "0")

echo -e "\n${CYAN}ðŸ“Š EXECUTIVE SUMMARY:${NC}"
echo -e "â€¢ ${GREEN}Target:${NC} $DOMAIN"
echo -e "â€¢ ${GREEN}Duration:${NC} $DURATION seconds ($(($DURATION / 60)) minutes)"
echo -e "â€¢ ${GREEN}Tools Successfully Used:${NC} $TOOLS_USED"
echo -e "â€¢ ${GREEN}Tools Skipped:${NC} $TOOLS_SKIPPED"
echo -e "â€¢ ${GREEN}Phases Completed:${NC} $CURRENT_PHASE/$TOTAL_PHASES"

echo -e "\n${YELLOW}ðŸ“ OUTPUT DIRECTORY:${NC}"
echo -e "  $(realpath "$OUTDIR")"

echo -e "\n${MAGENTA}ðŸŽ¯ CRITICAL FILES TO REVIEW:${NC}"
[ -f "$OUTDIR/vulnerabilities/nuclei_cves.txt" ] && echo -e "  â€¢ ${RED}Vulnerabilities:${NC} $OUTDIR/vulnerabilities/nuclei_cves.txt"
[ -f "$OUTDIR/secrets/trufflehog.txt" ] && echo -e "  â€¢ ${RED}Secrets:${NC} $OUTDIR/secrets/trufflehog.txt"
[ -f "$OUTDIR/subdomains/all_subdomains.txt" ] && echo -e "  â€¢ ${BLUE}Subdomains:${NC} $OUTDIR/subdomains/all_subdomains.txt ($SUBDOMAIN_COUNT found)"
[ -f "$OUTDIR/reports/executive_summary.txt" ] && echo -e "  â€¢ ${GREEN}Summary:${NC} $OUTDIR/reports/executive_summary.txt"

echo -e "\n${CYAN}ðŸš€ RECOMMENDED NEXT STEPS:${NC}"
echo -e "  1. Review vulnerabilities in ${BOLD}$OUTDIR/vulnerabilities/${NC}"
echo -e "  2. Analyze discovered secrets in ${BOLD}$OUTDIR/secrets/${NC}"
echo -e "  3. Check cloud assets in ${BOLD}$OUTDIR/cloud/${NC}"
echo -e "  4. Validate subdomain takeovers"
echo -e "  5. Perform manual testing on critical endpoints"

echo -e "\n${RED}âš ï¸  LEGAL & ETHICAL REMINDER:${NC}"
echo -e "  â€¢ Only test authorized targets"
echo -e "  â€¢ Respect rate limiting and terms of service"
echo -e "  â€¢ Report findings responsibly"

echo -e "\n${GREEN}ðŸ”¥ The Ultimate Swiss Army Knife has completed its mission!${NC}"
echo -e "${GREEN}   Nothing escapes this beast! ðŸ¦…${NC}\n"

# Save final summary
echo "=== FINAL SUMMARY ===" >> "$OUTDIR/recon_summary.txt"
echo "Domain: $DOMAIN" >> "$OUTDIR/recon_summary.txt"
echo "Company: $COMPANY" >> "$OUTDIR/recon_summary.txt"
echo "Tools Used: $TOOLS_USED" >> "$OUTDIR/recon_summary.txt"
echo "Tools Skipped: $TOOLS_SKIPPED" >> "$OUTDIR/recon_summary.txt"
echo "Duration: $DURATION seconds" >> "$OUTDIR/recon_summary.txt"
echo "Subdomains Found: $SUBDOMAIN_COUNT" >> "$OUTDIR/recon_summary.txt"
echo "Live Hosts: $LIVE_COUNT" >> "$OUTDIR/recon_summary.txt"
echo "URLs Discovered: $URL_COUNT" >> "$OUTDIR/recon_summary.txt"
echo "Completed: $(date)" >> "$OUTDIR/recon_summary.txt"

# Display missing tools if any
if [ -s "$OUTDIR/missing_tools.txt" ]; then
    echo -e "\n${YELLOW}âš ï¸  MISSING TOOLS (consider installing for complete coverage):${NC}"
    cat "$OUTDIR/missing_tools.txt"
    echo -e "\n${CYAN}ðŸ’¡ TIP: Install missing tools for more comprehensive reconnaissance${NC}"
fi

# Display quality score if available
if [ -f "$OUTDIR/testing/quality_report.json" ]; then
    QUALITY_SCORE=$(grep -o '"quality_score": [0-9.]*' "$OUTDIR/testing/quality_report.json" | cut -d' ' -f2)
    if [ -n "$QUALITY_SCORE" ]; then
        echo -e "\n${GREEN}ðŸ“ˆ DATA QUALITY SCORE: ${BOLD}${QUALITY_SCORE}%${NC}"
    fi
fi

echo -e "\n${MAGENTA}${BOLD}Treasure unlocked! The hunt continues... ðŸ´â€â˜ ï¸${NC}\n"

# Create a quick access script for next steps
cat << NEXTSTEPS > "$OUTDIR/next_steps.sh"
#!/bin/bash
echo "ðŸŽ¯ Quick Access for $DOMAIN Recon Results"
echo "=========================================="
echo "1. View subdomains: cat $OUTDIR/subdomains/all_subdomains.txt"
echo "2. View live hosts: cat $OUTDIR/services/live_hosts.txt" 
echo "3. View vulnerabilities: ls -la $OUTDIR/vulnerabilities/"
echo "4. View secrets: ls -la $OUTDIR/secrets/"
echo "5. Open HTML report: xdg-open $OUTDIR/reports/recon_report.html 2>/dev/null || open $OUTDIR/reports/recon_report.html 2>/dev/null"
echo "6. View executive summary: cat $OUTDIR/reports/executive_summary.txt"
echo ""
echo "Quick commands:"
echo "  cat $OUTDIR/subdomains/all_subdomains.txt | wc -l"
echo "  cat $OUTDIR/services/live_hosts.txt | wc -l"
echo "  ls $OUTDIR/vulnerabilities/*.txt | wc -l"
NEXTSTEPS
chmod +x "$OUTDIR/next_steps.sh"

log_success "Quick access script created: $OUTDIR/next_steps.sh"
log_info "Run ./next_steps.sh in the output directory for quick access to results"

# Final timestamp
echo "Reconnaissance completed at: $(date)" >> "$OUTDIR/recon_summary.txt"
