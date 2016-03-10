  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm1, %xmm1, %xmm11  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  xorl %edi, %edi                   #  2     0x4   2      OPC=xorl_r32_r32             
  callq .read_pf_into_rbx           #  3     0x6   5      OPC=callq_label              
  movq %xmm11, %rax                 #  4     0xb   5      OPC=movq_r64_xmm             
  xchgq %rax, %rbx                  #  5     0x10  3      OPC=xchgq_r64_r64            
  retq                              #  6     0x13  1      OPC=retq                     
                                                                                       
.size target, .-target
