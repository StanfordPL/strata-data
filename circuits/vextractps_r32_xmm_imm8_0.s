  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffb, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  xaddb %bl, %bh                  #  2     0xa   3      OPC=xaddb_rh_r8     
  movd %xmm1, %eax                #  3     0xd   4      OPC=movd_r32_xmm    
  callq .read_of_into_rbx         #  4     0x11  5      OPC=callq_label     
  cmovsl %eax, %ebx               #  5     0x16  3      OPC=cmovsl_r32_r32  
  retq                            #  6     0x19  1      OPC=retq            
                                                                            
.size target, .-target
