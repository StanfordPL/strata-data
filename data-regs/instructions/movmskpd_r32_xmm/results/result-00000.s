  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  sqrtps %xmm1, %xmm4    #  1     0    3      OPC=sqrtps_xmm_xmm     
  vmovmskpd %xmm4, %ebx  #  2     0x3  4      OPC=vmovmskpd_r32_xmm  
  retq                   #  3     0x7  1      OPC=retq               
                                                                     
.size target, .-target
