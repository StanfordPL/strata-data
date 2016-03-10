  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  phsubd %xmm3, %xmm2                             #  1     0     5      OPC=phsubd_xmm_xmm        
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  vmovlhps %xmm9, %xmm2, %xmm4                    #  3     0xa   5      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  4     0xf   5      OPC=callq_label           
  vsqrtps %ymm4, %ymm1                            #  5     0x14  4      OPC=vsqrtps_ymm_ymm       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label           
  retq                                            #  7     0x1d  1      OPC=retq                  
                                                                                                  
.size target, .-target
