  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffe, %rcx  #  1     0     10     OPC=movq_r64_imm64  
  movslq %ecx, %r13               #  2     0xa   3      OPC=movslq_r64_r32  
  rolw $0x1, %r13w                #  3     0xd   4      OPC=rolw_r16_one    
  adcw %cx, %bx                   #  4     0x11  3      OPC=adcw_r16_r16    
  retq                            #  5     0x14  1      OPC=retq            
                                                                            
.size target, .-target
