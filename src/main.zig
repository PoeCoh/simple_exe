const std = @import("std");
const local_module = @import("local_module");

pub fn main() !void {
    const result = local_module.hello();
    std.debug.print("Hello {s}\n", .{result});
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
