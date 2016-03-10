  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movsldup %xmm2, %xmm0                #  2     0x5   4      OPC=movsldup_xmm_xmm        
  vpmovsxdq %xmm10, %xmm2              #  3     0x9   5      OPC=vpmovsxdq_xmm_xmm       
  vmovlhps %xmm0, %xmm2, %xmm8         #  4     0xe   4      OPC=vmovlhps_xmm_xmm_xmm    
  vpunpckhdq %xmm0, %xmm8, %xmm0       #  5     0x12  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movshdup %xmm10, %xmm1               #  6     0x16  5      OPC=movshdup_xmm_xmm        
  movlhps %xmm0, %xmm1                 #  7     0x1b  3      OPC=movlhps_xmm_xmm         
  retq                                 #  8     0x1e  1      OPC=retq                    
                                                                                         
.size target, .-target
