  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label          
  movd %ebx, %xmm1                     #  2     0x5   4      OPC=movd_xmm_r32         
  movss %xmm1, %xmm13                  #  3     0x9   5      OPC=movss_xmm_xmm        
  vphaddd %xmm1, %xmm13, %xmm7         #  4     0xe   5      OPC=vphaddd_xmm_xmm_xmm  
  vorps %xmm7, %xmm1, %xmm1            #  5     0x13  4      OPC=vorps_xmm_xmm_xmm    
  callq .move_64_128_xmm12_xmm13_xmm1  #  6     0x17  5      OPC=callq_label          
  retq                                 #  7     0x1c  1      OPC=retq                 
                                                                                      
.size target, .-target
