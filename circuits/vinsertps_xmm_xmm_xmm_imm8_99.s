  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm3, %xmm1                     #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm  
  punpckhdq %xmm2, %xmm1                        #  3     0xa   4      OPC=punpckhdq_xmm_xmm     
  pmovzxwd %xmm7, %xmm8                         #  4     0xe   6      OPC=pmovzxwd_xmm_xmm      
  movhlps %xmm8, %xmm1                          #  5     0x14  4      OPC=movhlps_xmm_xmm       
  retq                                          #  6     0x18  1      OPC=retq                  
                                                                                                
.size target, .-target
