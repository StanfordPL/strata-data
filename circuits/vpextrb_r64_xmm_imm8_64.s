  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  vmovq %xmm1, %r9   #  1     0    5      OPC=vmovq_r64_xmm  
  movzbl %r9b, %ebx  #  2     0x5  4      OPC=movzbl_r32_r8  
  retq               #  3     0x9  1      OPC=retq           
                                                             
.size target, .-target
