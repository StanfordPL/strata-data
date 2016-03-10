  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm12  #  1     0    5      OPC=vbroadcastsd_ymm_xmm  
  vbroadcastsd %xmm12, %ymm7  #  2     0x5  5      OPC=vbroadcastsd_ymm_xmm  
  unpckhpd %xmm7, %xmm1       #  3     0xa  4      OPC=unpckhpd_xmm_xmm      
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
