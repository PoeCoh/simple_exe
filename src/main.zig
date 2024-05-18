const std = @import("std");
const local_module = @import("local_module");
const remote_module = @import("remote_module");
extern fn add(a: i32, b: i32) i32;

pub fn main() !void {
    const result = local_module.hello();
    std.debug.print("Hello {s}\n", .{result});

    const result2 = remote_module.hello();
    std.debug.print("Hello {s}\n", .{result2});
}
