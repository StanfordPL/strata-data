  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  movshdup %xmm2, %xmm11                        #  2     0x5   5      OPC=movshdup_xmm_xmm         
  movhlps %xmm2, %xmm6                          #  3     0xa   3      OPC=movhlps_xmm_xmm          
  vunpcklpd %xmm7, %xmm11, %xmm5                #  4     0xd   4      OPC=vunpcklpd_xmm_xmm_xmm    
  vpunpcklqdq %xmm11, %xmm11, %xmm1             #  5     0x11  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x16  5      OPC=callq_label              
  retq                                          #  7     0x1b  1      OPC=retq                     
                                                                                                   
.size target, .-target
