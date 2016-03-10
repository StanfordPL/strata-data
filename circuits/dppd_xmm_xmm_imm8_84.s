  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vcvtpd2dqx %xmm2, %xmm2          #  1     0     4      OPC=vcvtpd2dqx_xmm_xmm       
  vfmsub231pd %ymm2, %ymm2, %ymm2  #  2     0x4   5      OPC=vfmsub231pd_ymm_ymm_ymm  
  pandn %xmm2, %xmm2               #  3     0x9   4      OPC=pandn_xmm_xmm            
  pmovzxbd %xmm2, %xmm1            #  4     0xd   5      OPC=pmovzxbd_xmm_xmm         
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
