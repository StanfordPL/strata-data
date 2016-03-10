  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vandpd %ymm3, %ymm3, %ymm5                    #  1     0     4      OPC=vandpd_ymm_ymm_ymm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  vmovups %ymm5, %ymm1                          #  3     0x9   4      OPC=vmovups_ymm_ymm     
  punpckhqdq %xmm5, %xmm1                       #  4     0xd   4      OPC=punpckhqdq_xmm_xmm  
  retq                                          #  5     0x11  1      OPC=retq                
                                                                                              
.size target, .-target
