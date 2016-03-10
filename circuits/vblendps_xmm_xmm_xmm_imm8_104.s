  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm6, %xmm7, %xmm4               #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vrcpss %xmm7, %xmm4, %xmm1                    #  3     0x9   4      OPC=vrcpss_xmm_xmm_xmm       
  vunpckhps %xmm3, %xmm5, %xmm0                 #  4     0xd   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpor %ymm0, %ymm1, %ymm1                      #  5     0x11  4      OPC=vpor_ymm_ymm_ymm         
  movsd %xmm2, %xmm1                            #  6     0x15  4      OPC=movsd_xmm_xmm            
  retq                                          #  7     0x19  1      OPC=retq                     
                                                                                                   
.size target, .-target
