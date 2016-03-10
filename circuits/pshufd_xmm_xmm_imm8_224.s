  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastd %xmm2, %ymm12  #  1     0    5      OPC=vpbroadcastd_ymm_xmm  
  movsd %xmm12, %xmm2         #  2     0x5  5      OPC=movsd_xmm_xmm         
  movaps %xmm2, %xmm1         #  3     0xa  3      OPC=movaps_xmm_xmm        
  retq                        #  4     0xd  1      OPC=retq                  
                                                                             
.size target, .-target
