my_hash = {
    "cat" => "Garfield",
    "cat" => "Gnar",
    "cat" => "Fraggle Batches",
    "dog" => "Dumper",
    "dog" => "Argos",
    "dog" => "Midas"
}

# Or:

my_hash = Hash.new
my_hash["Garfield"] = "cat"
my_hash["Gnar"] = "cat"
my_hash["Fraggle Batches"] = "cat"
my_hash["Dumper"] = "dog"
my_hash["Argos"] = "dog"
my_hash["Midas"] = "dog"