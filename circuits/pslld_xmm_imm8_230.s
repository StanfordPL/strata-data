  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                   
.target:                          #        0    0      OPC=<label>              
  vcvttpd2dq %xmm1, %xmm14        #  1     0    4      OPC=vcvttpd2dq_xmm_xmm   
  vandnps %ymm14, %ymm14, %ymm12  #  2     0x4  5      OPC=vandnps_ymm_ymm_ymm  
  cvtpd2dq %xmm12, %xmm1          #  3     0x9  5      OPC=cvtpd2dq_xmm_xmm     
  retq                            #  4     0xe  1      OPC=retq                 
                                                                                
.size target, .-target
