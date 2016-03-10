  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rax  #  1     0     10     OPC=movq_r64_imm64  
  xaddw %ax, %ax                  #  2     0xa   4      OPC=xaddw_r16_r16   
  adcq %rax, %rbx                 #  3     0xe   3      OPC=adcq_r64_r64    
  retq                            #  4     0x11  1      OPC=retq            
                                                                            
.size target, .-target
