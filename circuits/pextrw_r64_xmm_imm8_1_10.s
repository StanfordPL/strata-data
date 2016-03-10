  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vmovq %xmm5, %rbp                             #  2     0x5   5      OPC=vmovq_r64_xmm      
  movzwl %bp, %edx                              #  3     0xa   3      OPC=movzwl_r32_r16     
  sarxq %rdx, %rdx, %rbx                        #  4     0xd   5      OPC=sarxq_r64_r64_r64  
  subw %dx, %bp                                 #  5     0x12  3      OPC=subw_r16_r16       
  cmovzw %dx, %bx                               #  6     0x15  4      OPC=cmovzw_r16_r16     
  retq                                          #  7     0x19  1      OPC=retq               
                                                                                             
.size target, .-target
