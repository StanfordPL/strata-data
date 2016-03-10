  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm11                       #  1     0     4      OPC=vmovshdup_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label        
  movshdup %xmm2, %xmm1                         #  3     0x9   4      OPC=movshdup_xmm_xmm   
  unpcklps %xmm4, %xmm11                        #  4     0xd   4      OPC=unpcklps_xmm_xmm   
  movsd %xmm11, %xmm1                           #  5     0x11  5      OPC=movsd_xmm_xmm      
  retq                                          #  6     0x16  1      OPC=retq               
                                                                                             
.size target, .-target
