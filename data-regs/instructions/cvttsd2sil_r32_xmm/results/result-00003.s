  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                      #  Line  RIP   Bytes  Opcode                  
.target:                    #        0     0      OPC=<label>             
  vmovdqa %xmm1, %xmm14     #  1     0     4      OPC=vmovdqa_xmm_xmm     
  vcvttpd2dq %ymm14, %xmm5  #  2     0x4   5      OPC=vcvttpd2dq_xmm_ymm  
  vcvtdq2pd %ymm5, %ymm14   #  3     0x9   4      OPC=vcvtdq2pd_ymm_ymm   
  cvtsd2sil %xmm14, %ebx    #  4     0xd   5      OPC=cvtsd2sil_r32_xmm   
  retq                      #  5     0x12  1      OPC=retq                
                                                                          
.size target, .-target
