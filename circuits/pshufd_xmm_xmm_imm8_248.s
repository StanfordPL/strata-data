  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vbroadcastss %xmm2, %xmm13  #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  unpckhps %xmm2, %xmm13      #  2     0x5   4      OPC=unpckhps_xmm_xmm      
  vmovddup %xmm13, %xmm12     #  3     0x9   5      OPC=vmovddup_xmm_xmm      
  movshdup %xmm2, %xmm1       #  4     0xe   4      OPC=movshdup_xmm_xmm      
  movsd %xmm12, %xmm1         #  5     0x12  5      OPC=movsd_xmm_xmm         
  retq                        #  6     0x17  1      OPC=retq                  
                                                                              
.size target, .-target
