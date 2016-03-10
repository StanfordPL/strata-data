  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  mulps %xmm2, %xmm1                              #  1     0     3      OPC=mulps_xmm_xmm           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x3   5      OPC=callq_label             
  callq .move_128_256_xmm10_xmm11_ymm2            #  3     0x8   5      OPC=callq_label             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  4     0xd   5      OPC=callq_label             
  addss %xmm6, %xmm2                              #  5     0x12  4      OPC=addss_xmm_xmm           
  vpunpckldq %ymm2, %ymm2, %ymm10                 #  6     0x16  4      OPC=vpunpckldq_ymm_ymm_ymm  
  movsldup %xmm10, %xmm1                          #  7     0x1a  5      OPC=movsldup_xmm_xmm        
  retq                                            #  8     0x1f  1      OPC=retq                    
                                                                                                    
.size target, .-target
