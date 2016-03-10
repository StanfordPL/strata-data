  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpmovsxdq %xmm3, %ymm8          #  1     0     5      OPC=vpmovsxdq_ymm_xmm       
  vpbroadcastd %xmm2, %xmm9       #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm    
  vmovapd %xmm2, %xmm1            #  3     0xa   4      OPC=vmovapd_xmm_xmm         
  vpunpckhdq %xmm8, %xmm9, %xmm2  #  4     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsd %xmm2, %xmm1              #  5     0x13  4      OPC=movsd_xmm_xmm           
  retq                            #  6     0x17  1      OPC=retq                    
                                                                                    
.size target, .-target
