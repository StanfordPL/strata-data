  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vmovapd %xmm1, %xmm4            #  1     0     4      OPC=vmovapd_xmm_xmm    
  vpmovsxdq %xmm4, %xmm3          #  2     0x4   5      OPC=vpmovsxdq_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9  #  3     0x9   5      OPC=callq_label        
  movl %r9d, %ebx                 #  4     0xe   3      OPC=movl_r32_r32       
  retq                            #  5     0x11  1      OPC=retq               
                                                                               
.size target, .-target
