shader_type spatial;

uniform vec3 color_a : source_color; // Color at top
uniform vec3 color_b : source_color; // Color at bottom

void fragment() {
    // Use UV.y for vertical gradient (0.0 at bottom, 1.0 at top)
    // Invert it so color_a is at top and color_b is at bottom
    float gradient_factor = UV.y;
    
    // Interpolate between the two colors
    vec3 final_color = mix(color_a, color_b, gradient_factor);
    ALBEDO = final_color;
}