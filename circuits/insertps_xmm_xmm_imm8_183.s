  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vcvtpd2dqx %xmm2, %xmm0        #  1     0    4      OPC=vcvtpd2dqx_xmm_xmm     
  vunpckhps %xmm2, %xmm0, %xmm3  #  2     0x4  4      OPC=vunpckhps_xmm_xmm_xmm  
  andnps %xmm1, %xmm1            #  3     0x8  3      OPC=andnps_xmm_xmm         
  movlhps %xmm3, %xmm1           #  4     0xb  3      OPC=movlhps_xmm_xmm        
  retq                           #  5     0xe  1      OPC=retq                   
                                                                                 
.size target, .-target
