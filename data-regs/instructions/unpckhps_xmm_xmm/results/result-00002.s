  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  punpckhqdq %xmm2, %xmm1                       #  1     0     4      OPC=punpckhqdq_xmm_xmm     
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label            
  vpbroadcastq %xmm5, %ymm14                    #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm   
  vmovdqa %xmm6, %xmm5                          #  4     0xe   4      OPC=vmovdqa_xmm_xmm        
  vunpcklpd %xmm7, %xmm14, %xmm6                #  5     0x12  4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x16  5      OPC=callq_label            
  retq                                          #  7     0x1b  1      OPC=retq                   
                                                                                                 
.size target, .-target
