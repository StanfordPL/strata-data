  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vcvtps2pd %xmm1, %xmm3                        #  1     0     4      OPC=vcvtps2pd_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label        
  xorq %rbx, %rbx                               #  3     0x9   3      OPC=xorq_r64_r64       
  unpckhps %xmm5, %xmm1                         #  4     0xc   3      OPC=unpckhps_xmm_xmm   
  callq .move_128_064_xmm1_r12_r13              #  5     0xf   5      OPC=callq_label        
  cmovnll %r13d, %ebx                           #  6     0x14  4      OPC=cmovnll_r32_r32    
  retq                                          #  7     0x18  1      OPC=retq               
                                                                                             
.size target, .-target
