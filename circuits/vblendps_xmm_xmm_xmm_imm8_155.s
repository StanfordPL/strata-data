  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  movsldup %xmm2, %xmm8   #  1     0     5      OPC=movsldup_xmm_xmm   
  punpckhdq %xmm3, %xmm8  #  2     0x5   5      OPC=punpckhdq_xmm_xmm  
  vmovddup %xmm3, %xmm1   #  3     0xa   4      OPC=vmovddup_xmm_xmm   
  unpckhpd %xmm8, %xmm1   #  4     0xe   5      OPC=unpckhpd_xmm_xmm   
  retq                    #  5     0x13  1      OPC=retq               
                                                                       
.size target, .-target
