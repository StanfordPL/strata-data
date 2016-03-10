  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vmovaps %ymm2, %ymm4                          #  2     0x5   4      OPC=vmovaps_ymm_ymm     
  vmovupd %xmm2, %xmm6                          #  3     0x9   4      OPC=vmovupd_xmm_xmm     
  punpckhqdq %xmm4, %xmm6                       #  4     0xd   4      OPC=punpckhqdq_xmm_xmm  
  vminps %ymm4, %ymm4, %ymm1                    #  5     0x11  4      OPC=vminps_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x15  5      OPC=callq_label         
  retq                                          #  7     0x1a  1      OPC=retq                
                                                                                              
.size target, .-target
