#!/bin/bash
# ╔═══════════════════════════════════════════════════════════════╗
# ║  RECON TOOLS INSTALLER FOR KALI LINUX (2025)                  ║
# ║  Ensures all dependencies are installed and working           ║
# ╚═══════════════════════════════════════════════════════════════╝

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

banner() {
cat << "EOF"
╔══════════════════════════════════════════════════════════════╗
║           RECON TOOLS SETUP FOR KALI LINUX                   ║
║              Installing All Dependencies                      ║
╚══════════════════════════════════════════════════════════════╝
EOF
}

log_info() {
    echo -e "${BLUE}[ℹ]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[✓]${NC} $1"
}

log_error() {
    echo -e "${RED}[✗]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[⚠]${NC} $1"
}

check_root() {
    if [ "$EUID" -ne 0 ]; then 
        log_error "Please run as root (sudo)"
        exit 1
    fi
}

check_internet() {
    if ! ping -c 1 google.com &> /dev/null; then
        log_error "No internet connection detected!"
        exit 1
    fi
    log_success "Internet connection verified"
}

banner
check_root
check_internet

log_info "Starting installation process..."
echo ""

# ═══════════════════════════════════════════════════════════════
# STEP 1: UPDATE SYSTEM
# ═══════════════════════════════════════════════════════════════
log_info "Step 1: Updating system packages..."
apt update -y
apt upgrade -y
log_success "System updated"

# ═══════════════════════════════════════════════════════════════
# STEP 2: INSTALL BASE DEPENDENCIES
# ═══════════════════════════════════════════════════════════════
log_info "Step 2: Installing base dependencies..."
apt install -y \
    curl \
    wget \
    git \
    python3 \
    python3-pip \
    python3-dev \
    golang-go \
    jq \
    tree \
    dnsutils \
    whois \
    nmap \
    masscan \
    build-essential \
    libssl-dev \
    libffi-dev \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev \
    libcurl4-openssl-dev

log_success "Base dependencies installed"

# ═══════════════════════════════════════════════════════════════
# STEP 3: CONFIGURE GO ENVIRONMENT
# ═══════════════════════════════════════════════════════════════
log_info "Step 3: Configuring Go environment..."

# Set Go paths
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Add to bashrc for persistence
if ! grep -q "export GOPATH=" ~/.bashrc; then
    echo 'export GOPATH=$HOME/go' >> ~/.bashrc
    echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> ~/.bashrc
fi

mkdir -p $GOPATH/{src,bin,pkg}
log_success "Go environment configured"

# ═══════════════════════════════════════════════════════════════
# STEP 4: INSTALL GO-BASED TOOLS
# ═══════════════════════════════════════════════════════════════
log_info "Step 4: Installing Go-based reconnaissance tools..."

declare -A go_tools=(
    ["subfinder"]="github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest"
    ["assetfinder"]="github.com/tomnomnom/assetfinder@latest"
    ["httprobe"]="github.com/tomnomnom/httprobe@latest"
    ["waybackurls"]="github.com/tomnomnom/waybackurls@latest"
    ["gau"]="github.com/lc/gau/v2/cmd/gau@latest"
    ["httpx"]="github.com/projectdiscovery/httpx/cmd/httpx@latest"
    ["nuclei"]="github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest"
    ["chaos"]="github.com/projectdiscovery/chaos-client/cmd/chaos@latest"
    ["gowitness"]="github.com/sensepost/gowitness@latest"
    ["puredns"]="github.com/d3mondev/puredns/v2@latest"
    ["dnsx"]="github.com/projectdiscovery/dnsx/cmd/dnsx@latest"
    ["shuffledns"]="github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest"
    ["katana"]="github.com/projectdiscovery/katana/cmd/katana@latest"
    ["github-subdomains"]="github.com/gwen001/github-subdomains@latest"
)

for tool in "${!go_tools[@]}"; do
    log_info "Installing $tool..."
    go install -v "${go_tools[$tool]}" 2>&1 | grep -v "go: downloading" || true
    if command -v $tool &> /dev/null; then
        log_success "$tool installed successfully"
    else
        log_warning "$tool installation may have issues"
    fi
done

# ═══════════════════════════════════════════════════════════════
# STEP 5: INSTALL AMASS
# ═══════════════════════════════════════════════════════════════
log_info "Step 5: Installing Amass..."
if ! command -v amass &> /dev/null; then
    go install -v github.com/owasp-amass/amass/v4/...@master
    log_success "Amass installed"
else
    log_success "Amass already installed"
fi

# ═══════════════════════════════════════════════════════════════
# STEP 6: INSTALL PYTHON TOOLS
# ═══════════════════════════════════════════════════════════════
log_info "Step 6: Installing Python-based tools..."

# Upgrade pip
python3 -m pip install --upgrade pip setuptools wheel

# Create requirements.txt for Python tools
cat > /tmp/python_recon_requirements.txt << 'EOF'
# Core OSINT & Recon Tools
h8mail==2.5.6
truffleHog3==3.0.7
censys==2.2.9
shodan==1.31.0
requests==2.31.0
beautifulsoup4==4.12.3
lxml==5.1.0

# DNS & Network Tools
dnspython==2.6.1
netaddr==1.2.1

# Web Analysis
wappalyzer==0.3.1
wafw00f==2.2.0
webanalyze==1.0.0

# Email & User Intel
linkedin-api==2.2.0
pwnedpasswords==2.0.0

# Credential Scanning
detect-secrets==1.4.0

# API Clients
PyGithub==2.2.0
python-gitlab==4.4.0

# Utilities
colorama==0.4.6
python-whois==0.8.0
mmh3==4.1.0
pyyaml==6.0.1
jinja2==3.1.3

# Certificate Analysis
pyOpenSSL==24.0.0
cryptography==42.0.2
EOF

log_info "Installing Python packages..."
pip3 install -r /tmp/python_recon_requirements.txt --break-system-packages 2>&1 | grep -E "(Successfully installed|Requirement already satisfied)" || true
log_success "Python tools installed"

# ═══════════════════════════════════════════════════════════════
# STEP 7: INSTALL APT-BASED TOOLS
# ═══════════════════════════════════════════════════════════════
log_info "Step 7: Installing APT-based reconnaissance tools..."

apt install -y \
    cewl \
    libimage-exiftool-perl \
    whatweb \
    sslscan \
    nikto \
    dirb \
    gobuster \
    wfuzz \
    sqlmap \
    commix \
    sublist3r \
    fierce \
    dnsrecon \
    dnsenum \
    ldap-utils \
    smbclient \
    enum4linux \
    nbtscan

log_success "APT tools installed"

# ═══════════════════════════════════════════════════════════════
# STEP 8: INSTALL THEHARVESTER
# ═══════════════════════════════════════════════════════════════
log_info "Step 8: Installing theHarvester..."
if [ ! -d "/opt/theHarvester" ]; then
    git clone https://github.com/laramies/theHarvester /opt/theHarvester
    cd /opt/theHarvester
    pip3 install -r requirements.txt --break-system-packages
    chmod +x theHarvester.py
    ln -sf /opt/theHarvester/theHarvester.py /usr/local/bin/theharvester
    log_success "theHarvester installed"
else
    log_success "theHarvester already installed"
fi

# ═══════════════════════════════════════════════════════════════
# STEP 9: INSTALL ADDITIONAL SPECIALIZED TOOLS
# ═══════════════════════════════════════════════════════════════
log_info "Step 9: Installing specialized tools..."

# Massdns
if [ ! -d "/opt/massdns" ]; then
    git clone https://github.com/blechschmidt/massdns /opt/massdns
    cd /opt/massdns
    make
    ln -sf /opt/massdns/bin/massdns /usr/local/bin/massdns
    log_success "Massdns installed"
fi

# Aquatone (for screenshots)
if ! command -v aquatone &> /dev/null; then
    wget -q https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip -O /tmp/aquatone.zip
    unzip -q /tmp/aquatone.zip -d /tmp/
    mv /tmp/aquatone /usr/local/bin/
    chmod +x /usr/local/bin/aquatone
    rm /tmp/aquatone.zip
    log_success "Aquatone installed"
fi

# EyeWitness
if [ ! -d "/opt/EyeWitness" ]; then
    git clone https://github.com/FortyNorthSecurity/EyeWitness /opt/EyeWitness
    cd /opt/EyeWitness/Python/setup
    ./setup.sh
    ln -sf /opt/EyeWitness/Python/EyeWitness.py /usr/local/bin/eyewitness
    log_success "EyeWitness installed"
fi

# GitLeaks
if ! command -v gitleaks &> /dev/null; then
    wget -q https://github.com/gitleaks/gitleaks/releases/download/v8.18.2/gitleaks_8.18.2_linux_x64.tar.gz -O /tmp/gitleaks.tar.gz
    tar -xzf /tmp/gitleaks.tar.gz -C /tmp/
    mv /tmp/gitleaks /usr/local/bin/
    chmod +x /usr/local/bin/gitleaks
    rm /tmp/gitleaks.tar.gz
    log_success "Gitleaks installed"
fi

# S3Scanner
pip3 install s3scanner --break-system-packages
log_success "S3Scanner installed"

# ═══════════════════════════════════════════════════════════════
# STEP 10: INSTALL WORDLISTS
# ═══════════════════════════════════════════════════════════════
log_info "Step 10: Installing wordlists..."
if [ ! -d "/usr/share/wordlists/seclists" ]; then
    apt install -y seclists
    log_success "SecLists installed"
else
    log_success "SecLists already installed"
fi

# ═══════════════════════════════════════════════════════════════
# STEP 11: UPDATE NUCLEI TEMPLATES
# ═══════════════════════════════════════════════════════════════
log_info "Step 11: Updating Nuclei templates..."
nuclei -update-templates > /dev/null 2>&1
log_success "Nuclei templates updated"

# ═══════════════════════════════════════════════════════════════
# STEP 12: CREATE TOOL VERIFICATION SCRIPT
# ═══════════════════════════════════════════════════════════════
log_info "Step 12: Creating verification script..."

cat > /usr/local/bin/verify-recon-tools << 'VERIFYEOF'
#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "════════════════════════════════════════════════════════════"
echo "          RECON TOOLS VERIFICATION"
echo "════════════════════════════════════════════════════════════"
echo ""

tools=(
    "subfinder" "assetfinder" "amass" "httprobe" "waybackurls"
    "gau" "httpx" "nuclei" "gowitness" "puredns" "dnsx"
    "nmap" "masscan" "nikto" "gobuster" "wfuzz"
    "theharvester" "h8mail" "whatweb" "wafw00f" "cewl"
    "exiftool" "sslscan" "aquatone" "eyewitness" "gitleaks"
    "whois" "dig" "host" "nslookup" "curl" "wget" "jq"
)

installed=0
missing=0

for tool in "${tools[@]}"; do
    if command -v $tool &> /dev/null; then
        echo -e "${GREEN}[✓]${NC} $tool"
        ((installed++))
    else
        echo -e "${RED}[✗]${NC} $tool"
        ((missing++))
    fi
done

echo ""
echo "════════════════════════════════════════════════════════════"
echo "Summary: $installed installed, $missing missing"
echo "════════════════════════════════════════════════════════════"
VERIFYEOF

chmod +x /usr/local/bin/verify-recon-tools
log_success "Verification script created: verify-recon-tools"

# ═══════════════════════════════════════════════════════════════
# STEP 13: CREATE CONFIG FILES
# ═══════════════════════════════════════════════════════════════
log_info "Step 13: Creating default configuration files..."

# Amass config
mkdir -p ~/.config/amass
if [ ! -f ~/.config/amass/config.ini ]; then
    cat > ~/.config/amass/config.ini << 'EOF'
[data_sources]
# Add your API keys here
# [data_sources.AlienVault]
# apikey = YOUR_API_KEY

# [data_sources.Censys]
# apikey = YOUR_API_ID
# secret = YOUR_API_SECRET

# [data_sources.Shodan]
# apikey = YOUR_API_KEY

# [data_sources.SecurityTrails]
# apikey = YOUR_API_KEY
EOF
    log_success "Amass config created at ~/.config/amass/config.ini"
fi

# Subfinder config
mkdir -p ~/.config/subfinder
if [ ! -f ~/.config/subfinder/provider-config.yaml ]; then
    cat > ~/.config/subfinder/provider-config.yaml << 'EOF'
# Add your API keys here
# shodan:
#   - YOUR_API_KEY
# censys:
#   - YOUR_API_ID:YOUR_API_SECRET
# binaryedge:
#   - YOUR_API_KEY
# securitytrails:
#   - YOUR_API_KEY
# github:
#   - YOUR_GITHUB_TOKEN
EOF
    log_success "Subfinder config created at ~/.config/subfinder/provider-config.yaml"
fi

# ═══════════════════════════════════════════════════════════════
# FINAL VERIFICATION
# ═══════════════════════════════════════════════════════════════
echo ""
log_info "Running final verification..."
echo ""

/usr/local/bin/verify-recon-tools

echo ""
echo -e "${GREEN}${BOLD}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}${BOLD}║            INSTALLATION COMPLETE! ✓                        ║${NC}"
echo -e "${GREEN}${BOLD}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${CYAN}Next steps:${NC}"
echo "1. Run: source ~/.bashrc"
echo "2. Add API keys to:"
echo "   - ~/.config/amass/config.ini"
echo "   - ~/.config/subfinder/provider-config.yaml"
echo "3. Run: verify-recon-tools (to check installation)"
echo "4. Run your recon script!"
echo ""
echo -e "${YELLOW}Important API Keys to obtain:${NC}"
echo "• Shodan: https://account.shodan.io/"
echo "• Censys: https://censys.io/register"
echo "• SecurityTrails: https://securitytrails.com/app/account/credentials"
echo "• GitHub Token: https://github.com/settings/tokens"
echo "• VirusTotal: https://www.virustotal.com/gui/my-apikey"
echo ""
