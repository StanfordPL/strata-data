  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label              
  movsldup %xmm2, %xmm5                     #  2     0x5   4      OPC=movsldup_xmm_xmm         
  vmovd %r9d, %xmm3                         #  3     0x9   5      OPC=vmovd_xmm_r32            
  vpbroadcastd %xmm3, %ymm1                 #  4     0xe   5      OPC=vpbroadcastd_ymm_xmm     
  vpunpcklqdq %xmm1, %xmm5, %xmm11          #  5     0x13  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmaxss %xmm2, %xmm11, %xmm1               #  6     0x17  4      OPC=vmaxss_xmm_xmm_xmm       
  retq                                      #  7     0x1b  1      OPC=retq                     
                                                                                               
.size target, .-target
