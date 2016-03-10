  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                      
.target:                                #        0     0      OPC=<label>                 
  vpbroadcastq %xmm2, %ymm11            #  1     0     5      OPC=vpbroadcastq_ymm_xmm    
  vmovd %ebx, %xmm0                     #  2     0x5   4      OPC=vmovd_xmm_r32           
  vpbroadcastd %xmm0, %xmm10            #  3     0x9   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckhdq %xmm2, %xmm10, %xmm1       #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovdqa %ymm11, %ymm10                #  5     0x12  5      OPC=vmovdqa_ymm_ymm         
  callq .move_128_256_xmm10_xmm11_ymm3  #  6     0x17  5      OPC=callq_label             
  movhlps %xmm3, %xmm1                  #  7     0x1c  3      OPC=movhlps_xmm_xmm         
  retq                                  #  8     0x1f  1      OPC=retq                    
                                                                                          
.size target, .-target
