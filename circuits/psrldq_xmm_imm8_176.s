  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vdivps %xmm1, %xmm1, %xmm6         #  1     0     4      OPC=vdivps_xmm_xmm_xmm    
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x4   5      OPC=callq_label           
  unpckhpd %xmm9, %xmm1              #  3     0x9   5      OPC=unpckhpd_xmm_xmm      
  vmovhlps %xmm1, %xmm6, %xmm5       #  4     0xe   4      OPC=vmovhlps_xmm_xmm_xmm  
  movsd %xmm5, %xmm1                 #  5     0x12  4      OPC=movsd_xmm_xmm         
  retq                               #  6     0x16  1      OPC=retq                  
                                                                                     
.size target, .-target
