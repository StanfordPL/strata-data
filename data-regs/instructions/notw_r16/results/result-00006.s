  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffff9, %rcx  #  1     0     10     OPC=movq_r64_imm64  
  sarq %cl, %rcx                  #  2     0xa   3      OPC=sarq_r64_cl     
  movsbl %cl, %edi                #  3     0xd   3      OPC=movsbl_r32_r8   
  xorw %di, %bx                   #  4     0x10  3      OPC=xorw_r16_r16    
  retq                            #  5     0x13  1      OPC=retq            
                                                                            
.size target, .-target
