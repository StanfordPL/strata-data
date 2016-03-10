  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vaddsubpd %xmm1, %xmm1, %xmm12                  #  1     0     4      OPC=vaddsubpd_xmm_xmm_xmm  
  cvtss2sd %xmm12, %xmm12                         #  2     0x4   5      OPC=cvtss2sd_xmm_xmm       
  vcvtpd2ps %ymm12, %xmm3                         #  3     0x9   5      OPC=vcvtpd2ps_xmm_ymm      
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xe   5      OPC=callq_label            
  pmovzxbq %xmm10, %xmm1                          #  5     0x13  6      OPC=pmovzxbq_xmm_xmm       
  retq                                            #  6     0x19  1      OPC=retq                   
                                                                                                   
.size target, .-target
