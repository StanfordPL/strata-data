  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  xorq %r13, %r13                 #  1     0     3      OPC=xorq_r64_r64    
  movq $0xffffffffffffffff, %rax  #  2     0x3   10     OPC=movq_r64_imm64  
  adcw %bx, %ax                   #  3     0xd   3      OPC=adcw_r16_r16    
  movswq %ax, %rbx                #  4     0x10  4      OPC=movswq_r64_r16  
  retq                            #  5     0x14  1      OPC=retq            
                                                                            
.size target, .-target
