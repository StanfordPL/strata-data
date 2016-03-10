  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  cvttss2sil %xmm1, %r8d             #  1     0     5      OPC=cvttss2sil_r32_xmm  
  callq .move_r8b_to_byte_4_of_ymm1  #  2     0x5   5      OPC=callq_label         
  movmskpd %xmm1, %rax               #  3     0xa   4      OPC=movmskpd_r64_xmm    
  movq %rax, %rbx                    #  4     0xe   3      OPC=movq_r64_r64        
  retq                               #  5     0x11  1      OPC=retq                
                                                                                   
.size target, .-target
