  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  xorq %rbx, %rbx    #  1     0    3      OPC=xorq_r64_r64   
  vmovd %xmm1, %edx  #  2     0x3  4      OPC=vmovd_r32_xmm  
  movb %dl, %bl      #  3     0x7  2      OPC=movb_r8_r8     
  retq               #  4     0x9  1      OPC=retq           
                                                             
.size target, .-target
