  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastq %xmm3, %xmm1   #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  vorpd %xmm3, %xmm2, %xmm11  #  2     0x5   4      OPC=vorpd_xmm_xmm_xmm     
  xorpd %xmm2, %xmm11         #  3     0x9   5      OPC=xorpd_xmm_xmm         
  movdqu %xmm11, %xmm1        #  4     0xe   5      OPC=movdqu_xmm_xmm        
  retq                        #  5     0x13  1      OPC=retq                  
                                                                              
.size target, .-target
