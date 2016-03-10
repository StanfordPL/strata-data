  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  movups %xmm2, %xmm0                           #  1     0     3      OPC=movups_xmm_xmm     
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x3   5      OPC=callq_label        
  vmovshdup %xmm0, %xmm8                        #  3     0x8   4      OPC=vmovshdup_xmm_xmm  
  unpcklps %xmm8, %xmm4                         #  4     0xc   4      OPC=unpcklps_xmm_xmm   
  movhlps %xmm4, %xmm1                          #  5     0x10  3      OPC=movhlps_xmm_xmm    
  retq                                          #  6     0x13  1      OPC=retq               
                                                                                             
.size target, .-target
