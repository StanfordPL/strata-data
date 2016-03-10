  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  movq %xmm1, %r12    #  1     0    5      OPC=movq_r64_xmm   
  movzbq %r12b, %rbx  #  2     0x5  4      OPC=movzbq_r64_r8  
  xchgw %bx, %r12w    #  3     0x9  4      OPC=xchgw_r16_r16  
  retq                #  4     0xd  1      OPC=retq           
                                                              
.size target, .-target
