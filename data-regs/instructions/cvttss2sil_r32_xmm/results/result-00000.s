  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                      #  Line  RIP  Bytes  Opcode                  
.target:                    #        0    0      OPC=<label>             
  vcvtps2pd %xmm1, %xmm7    #  1     0    4      OPC=vcvtps2pd_xmm_xmm   
  vcvttpd2dq %ymm7, %xmm12  #  2     0x4  4      OPC=vcvttpd2dq_xmm_ymm  
  movd %xmm12, %ebx         #  3     0x8  5      OPC=movd_r32_xmm        
  retq                      #  4     0xd  1      OPC=retq                
                                                                         
.size target, .-target
