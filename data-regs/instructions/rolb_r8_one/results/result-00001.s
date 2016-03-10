  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movsbq %bl, %rbx                  #  1     0     4      OPC=movsbq_r64_r8  
  callq .move_016_008_bx_r12b_r13b  #  2     0x4   5      OPC=callq_label    
  callq .move_008_016_r12b_r13b_dx  #  3     0x9   5      OPC=callq_label    
  movsbq %bl, %r13                  #  4     0xe   4      OPC=movsbq_r64_r8  
  addq %r13, %r13                   #  5     0x12  3      OPC=addq_r64_r64   
  rcll $0x1, %ebx                   #  6     0x15  2      OPC=rcll_r32_one   
  shlb $0x1, %dl                    #  7     0x17  2      OPC=shlb_r8_one    
  retq                              #  8     0x19  1      OPC=retq           
                                                                             
.size target, .-target
