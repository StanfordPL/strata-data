  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                        
.target:                                #        0     0      OPC=<label>                   
  vxorps %xmm3, %xmm3, %xmm4            #  1     0     4      OPC=vxorps_xmm_xmm_xmm        
  vfnmsub231ps %ymm4, %ymm4, %ymm4      #  2     0x4   5      OPC=vfnmsub231ps_ymm_ymm_ymm  
  vfmsub132ps %xmm4, %xmm3, %xmm3       #  3     0x9   5      OPC=vfmsub132ps_xmm_xmm_xmm   
  vfmsub132ps %xmm3, %xmm1, %xmm2       #  4     0xe   5      OPC=vfmsub132ps_xmm_xmm_xmm   
  callq .move_256_128_ymm2_xmm12_xmm13  #  5     0x13  5      OPC=callq_label               
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x18  5      OPC=callq_label               
  retq                                  #  7     0x1d  1      OPC=retq                      
                                                                                            
.size target, .-target
