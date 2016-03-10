  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovshdup %xmm3, %xmm1                          #  2     0x5   4      OPC=vmovshdup_xmm_xmm     
  vpbroadcastd %xmm11, %xmm3                      #  3     0x9   5      OPC=vpbroadcastd_xmm_xmm  
  unpckhps %xmm2, %xmm3                           #  4     0xe   3      OPC=unpckhps_xmm_xmm      
  vmovaps %ymm3, %ymm8                            #  5     0x11  4      OPC=vmovaps_ymm_ymm       
  movsd %xmm8, %xmm1                              #  6     0x15  5      OPC=movsd_xmm_xmm         
  retq                                            #  7     0x1a  1      OPC=retq                  
                                                                                                  
.size target, .-target
