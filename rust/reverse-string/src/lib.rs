use unicode_segmentation::UnicodeSegmentation;

pub fn reverse(input: &str) -> String {
    //I know easy answer is

    return UnicodeSegmentation::graphemes(input, true).rev().collect();
    // let input_as_bytes = input.as_bytes();
    // let mut reverse_string = String::new();

    // for i in (0..input_as_bytes.len()).rev() {
    //     reverse_string.push(char::from(input_as_bytes[i]));
    // }

    // return reverse_string;
}
