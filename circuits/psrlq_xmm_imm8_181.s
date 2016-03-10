  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vbroadcastss %xmm1, %ymm9   #  1     0     5      OPC=vbroadcastss_ymm_xmm  
  vpor %ymm9, %ymm9, %ymm7    #  2     0x5   5      OPC=vpor_ymm_ymm_ymm      
  vmovss %xmm7, %xmm1, %xmm2  #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm    
  xorps %xmm2, %xmm1          #  4     0xe   3      OPC=xorps_xmm_xmm         
  retq                        #  5     0x11  1      OPC=retq                  
                                                                              
.size target, .-target
