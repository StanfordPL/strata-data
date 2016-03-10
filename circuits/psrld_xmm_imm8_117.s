  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  vsqrtss %xmm1, %xmm1, %xmm12          #  1     0     4      OPC=vsqrtss_xmm_xmm_xmm  
  vrsqrtps %xmm12, %xmm3                #  2     0x4   5      OPC=vrsqrtps_xmm_xmm     
  callq .move_256_128_ymm3_xmm12_xmm13  #  3     0x9   5      OPC=callq_label          
  movddup %xmm13, %xmm1                 #  4     0xe   5      OPC=movddup_xmm_xmm      
  retq                                  #  5     0x13  1      OPC=retq                 
                                                                                       
.size target, .-target
