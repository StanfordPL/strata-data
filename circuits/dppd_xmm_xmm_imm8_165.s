  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vfmsub213pd %xmm8, %xmm1, %xmm2                 #  2     0x5   5      OPC=vfmsub213pd_xmm_xmm_xmm  
  maxsd %xmm9, %xmm11                             #  3     0xa   5      OPC=maxsd_xmm_xmm            
  vaddpd %xmm11, %xmm2, %xmm2                     #  4     0xf   5      OPC=vaddpd_xmm_xmm_xmm       
  vmovhlps %xmm2, %xmm10, %xmm13                  #  5     0x14  4      OPC=vmovhlps_xmm_xmm_xmm     
  movdqa %xmm13, %xmm1                            #  6     0x18  5      OPC=movdqa_xmm_xmm           
  retq                                            #  7     0x1d  1      OPC=retq                     
                                                                                                     
.size target, .-target
