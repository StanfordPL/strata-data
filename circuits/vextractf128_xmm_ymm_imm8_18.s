  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  movupd %xmm1, %xmm9        #  1     0    5      OPC=movupd_xmm_xmm        
  vpbroadcastq %xmm9, %xmm1  #  2     0x5  5      OPC=vpbroadcastq_xmm_xmm  
  movdqu %xmm9, %xmm1        #  3     0xa  5      OPC=movdqu_xmm_xmm        
  retq                       #  4     0xf  1      OPC=retq                  
                                                                            
.size target, .-target
