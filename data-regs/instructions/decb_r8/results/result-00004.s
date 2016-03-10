  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .set_cf                   #  1     0     5      OPC=callq_label     
  movq $0xfffffffffffffffe, %rax  #  2     0x5   10     OPC=movq_r64_imm64  
  movsbq %al, %rax                #  3     0xf   4      OPC=movsbq_r64_r8   
  adcb %bl, %al                   #  4     0x13  2      OPC=adcb_r8_r8      
  movzwl %ax, %ebx                #  5     0x15  3      OPC=movzwl_r32_r16  
  retq                            #  6     0x18  1      OPC=retq            
                                                                            
.size target, .-target
