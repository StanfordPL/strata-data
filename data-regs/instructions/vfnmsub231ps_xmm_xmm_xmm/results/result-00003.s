  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vmovdqu %xmm1, %xmm1               #  1     0     4      OPC=vmovdqu_xmm_xmm           
  vminps %xmm3, %xmm3, %xmm13        #  2     0x4   4      OPC=vminps_xmm_xmm_xmm        
  vmovupd %xmm2, %xmm4               #  3     0x8   4      OPC=vmovupd_xmm_xmm           
  vfnmsub132ps %ymm13, %ymm1, %ymm4  #  4     0xc   5      OPC=vfnmsub132ps_ymm_ymm_ymm  
  vmovdqu %xmm4, %xmm1               #  5     0x11  4      OPC=vmovdqu_xmm_xmm           
  retq                               #  6     0x15  1      OPC=retq                      
                                                                                         
.size target, .-target
