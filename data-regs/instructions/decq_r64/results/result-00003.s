  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffff8, %rsi  #  1     0     10     OPC=movq_r64_imm64  
  movq $0xffffffffffffffff, %rcx  #  2     0xa   10     OPC=movq_r64_imm64  
  sarq %cl, %rsi                  #  3     0x14  3      OPC=sarq_r64_cl     
  addq %rsi, %rbx                 #  4     0x17  3      OPC=addq_r64_r64    
  retq                            #  5     0x1a  1      OPC=retq            
                                                                            
.size target, .-target
