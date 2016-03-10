  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmovdqu %ymm1, %ymm6          #  1     0     4      OPC=vmovdqu_ymm_ymm     
  vsqrtps %xmm1, %xmm12         #  2     0x4   4      OPC=vsqrtps_xmm_xmm     
  cvttpd2dq %xmm6, %xmm13       #  3     0x8   5      OPC=cvttpd2dq_xmm_xmm   
  vaddps %xmm12, %xmm13, %xmm1  #  4     0xd   5      OPC=vaddps_xmm_xmm_xmm  
  movupd %xmm6, %xmm1           #  5     0x12  4      OPC=movupd_xmm_xmm      
  retq                          #  6     0x16  1      OPC=retq                
                                                                              
.size target, .-target
