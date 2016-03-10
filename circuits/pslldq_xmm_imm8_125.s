  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vdivss %xmm1, %xmm1, %xmm2            #  1     0     4      OPC=vdivss_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  vcvtpd2dqx %xmm11, %xmm15             #  3     0x9   5      OPC=vcvtpd2dqx_xmm_xmm  
  movdqa %xmm15, %xmm1                  #  4     0xe   5      OPC=movdqa_xmm_xmm      
  movupd %xmm1, %xmm1                   #  5     0x13  4      OPC=movupd_xmm_xmm      
  retq                                  #  6     0x17  1      OPC=retq                
                                                                                      
.size target, .-target
