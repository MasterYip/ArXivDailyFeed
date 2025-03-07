// let titles_type = ["Dataset", "Survey", "Review", "Overview"];
// let titles_model = ["BERT", "GPT", "Transformer"];
// let titles_method = ["Pre-train", "Pretrain", "Prompt", "Self-Supervised"];
let titles_type = ["Survey", "Review", "Overview", "Benchmark"];
let titles_model = ["Locomotion", "Manipulation", "Manipulator", "Grasp", "Plan", "Active-Perceptive", "Collision", "Navigation"];
let titles_method = ["Optimization", "Model Predictive"];
let titles = titles_model + titles_method + titles_type;
let authors_array = [
    // ==Robotics
    // CMU RI
    "Zachary Manchester", "Shuo Yang", "John Z. Zhang",
    // CMU RI LeCar
    "Guanya Shi", "Chaoyi Pan", "Tairan He",
    // ETH RSL
    "Marco Hutter", "Peter Fankhauser", "Farbod Farshidian", "Fabian Jenelten",
    // ETH Disney Research
    "Ruben Grandia",
    // Boston Dynamics
    "Marc Raibert",
    // Boston Robotics AI
    // MIT
    "Russ Tedrake",
    // MIT Biomimetics
    
    // UCB Hybrid Robotics
    // ZJU DeepRobotics
    "Qiuguo Zhu",
    // SUSTech LimX
    "Wei Zhang",
    // HKUST Aerial Robotics
    "Shaojie Shen", "Fei Gao", "Tong Qin", "Boyu Zhou",
    // HKU MARS
    "Fu Zhang",

    // ==AI
    // UCB
    "Sergey Levine"
    // MIT CSAIL
];
// "Yanjun Cao", "Wenchao Ding", "Hesheng Wang", "Huan Yin", "Peng Yin", "Ming Liu", "Yue Wang", "Hang Zhao", "Xieyuanli Chen"];
// "Dieter Fox", "Frank Dellaert", "Marco Tognon", "Davide Scaramuzza", "Javier Alonso-Mora", "Peter Corke", "Angela P. Schoellig", "Roland Siegwart",
// "Vijay Kumar",

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // DM
    // "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR",
    // IR
    // "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC", "SIGIR",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // NLP
    // "AACL", "ACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL", "SemEval", "WANLP", "WASSA", "WOAH",
    // Arch
    // "ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO", "PPoPP", "SC", "SoCC",
    // System
    // "FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP",
    // Security
    // "ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security"

    // Robotics
    "ICRA", "RSS", "IROS", "CORL",
    // CG
    "SIGGRAPH",
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(| sum, v | sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(| sum, v | sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(| sum, v | sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;