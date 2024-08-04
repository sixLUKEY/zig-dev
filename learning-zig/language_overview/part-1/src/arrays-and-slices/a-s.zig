const std = @import("std");
const a = [5]i32{ 1, 2, 3, 4, 5 };

// same struct syntax .{...}
const b: [5]i32 = .{ 1, 2, 3, 4, 5 };

// use [-] to let compiler infer length
const c = [_]i32{ 1, 2, 3, 4, 5 };

pub fn main() void {
    std.debug.print("a: {d}\n", .{a});
    std.debug.print("b: {d}\n", .{b});
    std.debug.print("c: {d}\n", .{c});
}
