  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffe0, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  rolw $0x1, %bx                  #  2     0xa   3      OPC=rolw_r16_one    
  movswq %cx, %rsp                #  3     0xd   4      OPC=movswq_r64_r16  
  xaddl %ebx, %esp                #  4     0x11  3      OPC=xaddl_r32_r32   
  xaddb %bl, %cl                  #  5     0x14  3      OPC=xaddb_r8_r8     
  retq                            #  6     0x17  1      OPC=retq            
                                                                            
.size target, .-target
