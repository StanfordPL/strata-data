  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vbroadcastsd %xmm1, %ymm8  #  1     0    5      OPC=vbroadcastsd_ymm_xmm  
  andnpd %xmm8, %xmm1        #  2     0x5  5      OPC=andnpd_xmm_xmm        
  pmovzxwq %xmm1, %xmm1      #  3     0xa  5      OPC=pmovzxwq_xmm_xmm      
  retq                       #  4     0xf  1      OPC=retq                  
                                                                            
.size target, .-target
