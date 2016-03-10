  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  unpcklps %xmm4, %xmm5                         #  2     0x5   3      OPC=unpcklps_xmm_xmm       
  vpbroadcastd %xmm6, %ymm10                    #  3     0x8   5      OPC=vpbroadcastd_ymm_xmm   
  vunpcklps %xmm10, %xmm5, %xmm1                #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm  
  retq                                          #  5     0x12  1      OPC=retq                   
                                                                                                 
.size target, .-target
