  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpxor %xmm4, %xmm4, %xmm2         #  1     0     4      OPC=vpxor_xmm_xmm_xmm  
  movb %bl, %ch                     #  2     0x4   2      OPC=movb_rh_r8         
  callq .move_128_064_xmm2_r12_r13  #  3     0x6   5      OPC=callq_label        
  popcntq %r12, %rdi                #  4     0xb   5      OPC=popcntq_r64_r64    
  sbbb %cl, %ch                     #  5     0x10  2      OPC=sbbb_rh_r8         
  retq                              #  6     0x12  1      OPC=retq               
                                                                                 
.size target, .-target
