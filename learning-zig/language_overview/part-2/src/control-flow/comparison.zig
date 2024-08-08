const std = @import("std");

fn anniversaryName(years_married: u16) []const u8 {
    switch (years_married) {
        1 => return "paper",
        2 => return "cotton",
        3 => return "leather",
        4 => return "flower",
        5 => return "wood",
        6 => return "sugar",
        else => return "no more gifts for you!",
    }
}

fn arrivalTimeDes(minutes: u16, is_late: bool) []const u8 {
    switch (minutes) {
        0 => return "arrived",
        1, 2 => return "soon",
        3...5 => return "no more than 5 minutes",
        else => {
            if (!is_late) {
                return "sorry, it'll be a while";
            }
            return "never";
        },
    }
}

fn contains(haystack: []const u32, needle: u32) bool {
    for (haystack) |value| {
        if (needle == value) {
            return true;
        }
    }
    return false;
}

pub fn eql(comptime T: type, a: []const T, b: []const T) bool {
    // if they aren't the same length, they can't be equal
    if (a.len != b.len) return false;

    for (a, b) |a_elem, b_elem| {
        if (a_elem != b_elem) return false;
    }

    return true;
}

pub fn loop() void {
    for (0..10) |i| {
        std.debug.print("{d}\n", .{i});
    }
}

fn indexOf(haystack: []const u32, needle: u32) ?usize {
    for (haystack, 0..) |value, i| {
        if (needle == value) {
            return i;
        }
    }
    return null;
}

pub fn escapeCnt(src: []const u32) usize {
    var escape_count: usize = 0;
    {
        var i: usize = 0;

        while (i < src.len) {
            // backslash is used as an escape character, thus we need to escape it...
            // with a backslash.
            if (src[i] == '\\') {
                i += 2;
                escape_count += 1;
            } else {
                i += 1;
            }
        }
    }
    return escape_count;
}
