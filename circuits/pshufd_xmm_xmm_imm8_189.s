  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm6, %xmm7, %xmm13                #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  vbroadcastsd %xmm5, %ymm12                    #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm   
  unpcklps %xmm13, %xmm12                       #  4     0xe   4      OPC=unpcklps_xmm_xmm       
  callq .move_64_128_xmm12_xmm13_xmm1           #  5     0x12  5      OPC=callq_label            
  retq                                          #  6     0x17  1      OPC=retq                   
                                                                                                 
.size target, .-target
