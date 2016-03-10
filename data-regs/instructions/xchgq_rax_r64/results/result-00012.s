  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  callq .move_016_008_bx_r12b_r13b  #  1     0    5      OPC=callq_label    
  xchgb %bl, %r12b                  #  2     0x5  3      OPC=xchgb_r8_r8    
  xchgq %rax, %rbx                  #  3     0x8  3      OPC=xchgq_r64_r64  
  retq                              #  4     0xb  1      OPC=retq           
                                                                            
.size target, .-target
