  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  movq $0x1, %rbx                               #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  2     0xa   5      OPC=callq_label     
  xaddb %bl, %dh                                #  3     0xf   3      OPC=xaddb_rh_r8     
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  4     0x12  5      OPC=callq_label     
  xchgl %ebx, %r11d                             #  5     0x17  3      OPC=xchgl_r32_r32   
  retq                                          #  6     0x1a  1      OPC=retq            
                                                                                          
.size target, .-target
