  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .clear_cf                 #  1     0     5      OPC=callq_label     
  movq $0xfffffffffffffffe, %rbp  #  2     0x5   10     OPC=movq_r64_imm64  
  movsbl %bpl, %edi               #  3     0xf   4      OPC=movsbl_r32_r8   
  rcll $0x1, %edi                 #  4     0x13  2      OPC=rcll_r32_one    
  adcb %bl, %bpl                  #  5     0x15  3      OPC=adcb_r8_r8      
  movswq %bp, %rbx                #  6     0x18  4      OPC=movswq_r64_r16  
  retq                            #  7     0x1c  1      OPC=retq            
                                                                            
.size target, .-target
