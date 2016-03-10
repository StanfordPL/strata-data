  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  callq .move_64_128_xmm10_xmm11_xmm1             #  2     0x5   5      OPC=callq_label       
  xorpd %xmm2, %xmm8                              #  3     0xa   5      OPC=xorpd_xmm_xmm     
  pxor %xmm8, %xmm1                               #  4     0xf   5      OPC=pxor_xmm_xmm      
  unpcklpd %xmm1, %xmm1                           #  5     0x14  4      OPC=unpcklpd_xmm_xmm  
  movss %xmm11, %xmm1                             #  6     0x18  5      OPC=movss_xmm_xmm     
  retq                                            #  7     0x1d  1      OPC=retq              
                                                                                              
.size target, .-target
