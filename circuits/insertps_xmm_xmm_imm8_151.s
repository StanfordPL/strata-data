  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vsqrtss %xmm11, %xmm11, %xmm6                   #  2     0x5   5      OPC=vsqrtss_xmm_xmm_xmm      
  vpunpckhdq %xmm9, %xmm11, %xmm10                #  3     0xa   5      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpckhdq %xmm1, %xmm6, %xmm5                  #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  sqrtpd %xmm11, %xmm0                            #  5     0x13  5      OPC=sqrtpd_xmm_xmm           
  vpunpckhdq %xmm6, %xmm6, %xmm6                  #  6     0x18  4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vminpd %xmm0, %xmm6, %xmm8                      #  7     0x1c  4      OPC=vminpd_xmm_xmm_xmm       
  vpunpckhqdq %ymm8, %ymm5, %ymm11                #  8     0x20  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1             #  9     0x25  5      OPC=callq_label              
  retq                                            #  10    0x2a  1      OPC=retq                     
                                                                                                     
.size target, .-target
