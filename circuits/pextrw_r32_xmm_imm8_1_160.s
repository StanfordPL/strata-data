  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  xorl %ebx, %ebx                   #  1     0     2      OPC=xorl_r32_r32       
  vorps %xmm1, %xmm1, %xmm1         #  2     0x2   4      OPC=vorps_xmm_xmm_xmm  
  vmovupd %xmm1, %xmm6              #  3     0x6   4      OPC=vmovupd_xmm_xmm    
  vpmovsxbq %xmm6, %xmm1            #  4     0xa   5      OPC=vpmovsxbq_xmm_xmm  
  callq .move_128_064_xmm1_r12_r13  #  5     0xf   5      OPC=callq_label        
  callq .move_008_016_r12b_r13b_bx  #  6     0x14  5      OPC=callq_label        
  retq                              #  7     0x19  1      OPC=retq               
                                                                                 
.size target, .-target
