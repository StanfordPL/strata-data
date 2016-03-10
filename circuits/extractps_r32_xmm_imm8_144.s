  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movd %xmm1, %esi   #  1     0    4      OPC=movd_r32_xmm   
  movzbq %sil, %rbx  #  2     0x4  4      OPC=movzbq_r64_r8  
  xaddl %ebx, %esi   #  3     0x8  3      OPC=xaddl_r32_r32  
  retq               #  4     0xb  1      OPC=retq           
                                                             
.size target, .-target
