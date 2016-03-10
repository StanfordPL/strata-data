  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vmovshdup %xmm3, %xmm1               #  1     0     4      OPC=vmovshdup_xmm_xmm     
  movshdup %xmm2, %xmm10               #  2     0x4   5      OPC=movshdup_xmm_xmm      
  callq .move_128_64_xmm1_xmm12_xmm13  #  3     0x9   5      OPC=callq_label           
  vmovlhps %xmm12, %xmm10, %xmm1       #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                  
                                                                                       
.size target, .-target
