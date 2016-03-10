  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                 
.target:                               #        0    0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0    5      OPC=callq_label        
  vmovshdup %xmm11, %xmm9              #  2     0x5  5      OPC=vmovshdup_xmm_xmm  
  movd %xmm9, %ebx                     #  3     0xa  5      OPC=movd_r32_xmm       
  retq                                 #  4     0xf  1      OPC=retq               
                                                                                   
.size target, .-target
