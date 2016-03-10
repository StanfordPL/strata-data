  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovss %xmm8, %xmm2, %xmm13                     #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm       
  vmulpd %xmm13, %xmm1, %xmm6                     #  3     0xa   5      OPC=vmulpd_xmm_xmm_xmm       
  vpunpckhqdq %xmm2, %xmm2, %xmm3                 #  4     0xf   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vhaddpd %ymm6, %ymm3, %ymm6                     #  5     0x13  4      OPC=vhaddpd_ymm_ymm_ymm      
  movhlps %xmm6, %xmm6                            #  6     0x17  3      OPC=movhlps_xmm_xmm          
  movdqu %xmm6, %xmm1                             #  7     0x1a  4      OPC=movdqu_xmm_xmm           
  retq                                            #  8     0x1e  1      OPC=retq                     
                                                                                                     
.size target, .-target
