  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x0, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  orb %bl, %bl       #  2     0xa   2      OPC=orb_r8_r8       
  vmovd %xmm1, %edx  #  3     0xc   4      OPC=vmovd_r32_xmm   
  xchgl %edx, %ebx   #  4     0x10  2      OPC=xchgl_r32_r32   
  retq               #  5     0x12  1      OPC=retq            
                                                               
.size target, .-target
