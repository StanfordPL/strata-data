  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffb, %rax  #  1     0     10     OPC=movq_r64_imm64  
  movsbw %ah, %cx                 #  2     0xa   4      OPC=movsbw_r16_rh   
  xchgw %ax, %cx                  #  3     0xe   2      OPC=xchgw_r16_ax    
  xorw %bx, %ax                   #  4     0x10  3      OPC=xorw_r16_r16    
  xchgw %bx, %ax                  #  5     0x13  3      OPC=xchgw_r16_r16   
  retq                            #  6     0x16  1      OPC=retq            
                                                                            
.size target, .-target
