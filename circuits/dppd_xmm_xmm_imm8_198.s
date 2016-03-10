  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vfmsub132pd %xmm1, %xmm1, %xmm2     #  1     0     5      OPC=vfmsub132pd_xmm_xmm_xmm  
  vmovsldup %xmm2, %xmm13             #  2     0x5   4      OPC=vmovsldup_xmm_xmm        
  vcvtpd2dq %ymm13, %xmm0             #  3     0x9   5      OPC=vcvtpd2dq_xmm_ymm        
  vrcpss %xmm0, %xmm13, %xmm3         #  4     0xe   4      OPC=vrcpss_xmm_xmm_xmm       
  callq .move_256_128_ymm3_xmm8_xmm9  #  5     0x12  5      OPC=callq_label              
  movdqa %xmm9, %xmm1                 #  6     0x17  5      OPC=movdqa_xmm_xmm           
  retq                                #  7     0x1c  1      OPC=retq                     
                                                                                         
.size target, .-target
