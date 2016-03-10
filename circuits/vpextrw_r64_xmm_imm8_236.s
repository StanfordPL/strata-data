  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  movq $0x7, %rbx                           #  1     0     10     OPC=movq_r64_imm64   
  xaddb %bl, %bh                            #  2     0xa   3      OPC=xaddb_rh_r8      
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xd   5      OPC=callq_label      
  cmovpow %r8w, %bx                         #  4     0x12  5      OPC=cmovpow_r16_r16  
  retq                                      #  5     0x17  1      OPC=retq             
                                                                                       
.size target, .-target
