  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                      #  Line  RIP  Bytes  Opcode                 
.target:                    #        0    0      OPC=<label>            
  vmovupd %xmm1, %xmm10     #  1     0    4      OPC=vmovupd_xmm_xmm    
  vcvtpd2dq %ymm10, %xmm13  #  2     0x4  5      OPC=vcvtpd2dq_xmm_ymm  
  movd %xmm13, %ebx         #  3     0x9  5      OPC=movd_r32_xmm       
  retq                      #  4     0xe  1      OPC=retq               
                                                                        
.size target, .-target
