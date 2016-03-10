  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm7, %xmm5, %xmm1                #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm3  #  3     0x9   5      OPC=callq_label             
  movupd %xmm1, %xmm15                          #  4     0xe   5      OPC=movupd_xmm_xmm          
  unpcklps %xmm3, %xmm1                         #  5     0x13  3      OPC=unpcklps_xmm_xmm        
  movsd %xmm15, %xmm1                           #  6     0x16  5      OPC=movsd_xmm_xmm           
  retq                                          #  7     0x1b  1      OPC=retq                    
                                                                                                  
.size target, .-target
