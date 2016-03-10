  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovss %xmm1, %xmm1, %xmm3  #  1     0    4      OPC=vmovss_xmm_xmm_xmm  
  vcvtpd2dq %ymm3, %xmm0      #  2     0x4  4      OPC=vcvtpd2dq_xmm_ymm   
  movd %xmm0, %ebx            #  3     0x8  4      OPC=movd_r32_xmm        
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
