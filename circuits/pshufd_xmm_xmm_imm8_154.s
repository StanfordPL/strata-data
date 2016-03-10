  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  unpckhps %xmm2, %xmm2                           #  2     0x5   3      OPC=unpckhps_xmm_xmm      
  movq %xmm2, %xmm11                              #  3     0x8   5      OPC=movq_xmm_xmm          
  vbroadcastss %xmm2, %ymm8                       #  4     0xd   5      OPC=vbroadcastss_ymm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label           
  unpcklps %xmm2, %xmm1                           #  6     0x17  3      OPC=unpcklps_xmm_xmm      
  retq                                            #  7     0x1a  1      OPC=retq                  
                                                                                                  
.size target, .-target
