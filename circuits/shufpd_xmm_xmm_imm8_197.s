  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm14  #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  vbroadcastsd %xmm14, %ymm7  #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm  
  movdqa %xmm7, %xmm0         #  3     0xa   4      OPC=movdqa_xmm_xmm        
  unpckhpd %xmm0, %xmm1       #  4     0xe   4      OPC=unpckhpd_xmm_xmm      
  retq                        #  5     0x12  1      OPC=retq                  
                                                                              
.size target, .-target
