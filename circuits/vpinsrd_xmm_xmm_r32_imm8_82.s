  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label        
  vmovups %xmm2, %xmm8            #  2     0x5   4      OPC=vmovups_xmm_xmm    
  xorl %ebx, %r9d                 #  3     0x9   3      OPC=xorl_r32_r32       
  sbbq %r8, %r8                   #  4     0xc   3      OPC=sbbq_r64_r64       
  callq .move_064_128_r8_r9_xmm1  #  5     0xf   5      OPC=callq_label        
  vpxor %xmm8, %xmm1, %xmm1       #  6     0x14  5      OPC=vpxor_xmm_xmm_xmm  
  retq                            #  7     0x19  1      OPC=retq               
                                                                               
.size target, .-target
