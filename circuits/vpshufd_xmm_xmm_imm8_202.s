  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vbroadcastss %xmm2, %xmm11      #  1     0     5      OPC=vbroadcastss_xmm_xmm    
  vpunpckhdq %xmm2, %xmm2, %xmm0  #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpckhdq %xmm0, %xmm11         #  3     0x9   5      OPC=punpckhdq_xmm_xmm       
  vmovlhps %xmm11, %xmm0, %xmm1   #  4     0xe   5      OPC=vmovlhps_xmm_xmm_xmm    
  retq                            #  5     0x13  1      OPC=retq                    
                                                                                    
.size target, .-target
