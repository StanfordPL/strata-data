  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vcvtps2pd %xmm1, %ymm1  #  1     0    4      OPC=vcvtps2pd_ymm_xmm  
  vcvtpd2dq %ymm1, %xmm2  #  2     0x4  4      OPC=vcvtpd2dq_xmm_ymm  
  movd %xmm2, %ebx        #  3     0x8  4      OPC=movd_r32_xmm       
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
