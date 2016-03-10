  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vmovd %ebx, %xmm4                               #  1     0     4      OPC=vmovd_xmm_r32      
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label        
  punpckldq %xmm11, %xmm4                         #  3     0x9   5      OPC=punpckldq_xmm_xmm  
  unpcklpd %xmm4, %xmm1                           #  4     0xe   4      OPC=unpcklpd_xmm_xmm   
  retq                                            #  5     0x12  1      OPC=retq               
                                                                                               
.size target, .-target