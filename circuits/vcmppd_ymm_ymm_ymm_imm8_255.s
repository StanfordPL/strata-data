  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vzeroall                                        #  1     0     3      OPC=vzeroall                 
  vdivps %xmm7, %xmm1, %xmm6                      #  2     0x3   4      OPC=vdivps_xmm_xmm_xmm       
  pmovsxwq %xmm6, %xmm13                          #  3     0x7   6      OPC=pmovsxwq_xmm_xmm         
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label              
  vpunpckhqdq %ymm11, %ymm13, %ymm5               #  5     0x12  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovshdup %ymm5, %ymm1                          #  6     0x17  4      OPC=vmovshdup_ymm_ymm        
  vpbroadcastq %xmm1, %ymm1                       #  7     0x1b  5      OPC=vpbroadcastq_ymm_xmm     
  retq                                            #  8     0x20  1      OPC=retq                     
                                                                                                     
.size target, .-target
