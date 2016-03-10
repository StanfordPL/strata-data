  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  xorq %rbx, %rbx                      #  1     0     3      OPC=xorq_r64_r64       
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x3   5      OPC=callq_label        
  vpmovsxwq %xmm11, %xmm2              #  3     0x8   5      OPC=vpmovsxwq_xmm_xmm  
  adcl %ebx, %ebx                      #  4     0xd   2      OPC=adcl_r32_r32       
  callq .move_128_064_xmm2_r12_r13     #  5     0xf   5      OPC=callq_label        
  cmovzw %r13w, %bx                    #  6     0x14  5      OPC=cmovzw_r16_r16     
  retq                                 #  7     0x19  1      OPC=retq               
                                                                                    
.size target, .-target
