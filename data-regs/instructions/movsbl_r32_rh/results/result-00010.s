  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffe0, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  xaddb %bl, %ah                  #  2     0xa   3      OPC=xaddb_rh_r8     
  movsbl %bl, %ebp                #  3     0xd   3      OPC=movsbl_r32_r8   
  xchgl %ebx, %ebp                #  4     0x10  2      OPC=xchgl_r32_r32   
  retq                            #  5     0x12  1      OPC=retq            
                                                                            
.size target, .-target
