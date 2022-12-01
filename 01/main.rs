// blazingly fast
fn task(calories: Vec<&str>) -> i32 {
    let mut sum = 0;
    let mut highest = 0;
    for calory in calories {
        if calory == "" {
            if sum > highest {
                highest = sum;
            }
            sum = 0;
            continue;
        }
        sum += calory.parse::<i32>().expect("Bad data");
    }
    return highest;
}

fn main() {
    println!("{}", task(vec!["10", "20", "", "30", "40", "", "5"]));
}
