  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vmovdqu %xmm1, %xmm4    #  1     0     4      OPC=vmovdqu_xmm_xmm    
  vcvtdq2ps %ymm4, %ymm9  #  2     0x4   4      OPC=vcvtdq2ps_ymm_ymm  
  unpckhpd %xmm4, %xmm2   #  3     0x8   4      OPC=unpckhpd_xmm_xmm   
  unpckhpd %xmm9, %xmm1   #  4     0xc   5      OPC=unpckhpd_xmm_xmm   
  punpcklwd %xmm2, %xmm1  #  5     0x11  4      OPC=punpcklwd_xmm_xmm  
  retq                    #  6     0x15  1      OPC=retq               
                                                                       
.size target, .-target
