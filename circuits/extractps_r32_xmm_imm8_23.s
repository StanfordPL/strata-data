  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  movq $0xfffffffffffffff0, %rbx                #  1     0     10     OPC=movq_r64_imm64  
  subb %bl, %bh                                 #  2     0xa   2      OPC=subb_rh_r8      
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xc   5      OPC=callq_label     
  xchgl %r13d, %ebx                             #  4     0x11  3      OPC=xchgl_r32_r32   
  retq                                          #  5     0x14  1      OPC=retq            
                                                                                          
.size target, .-target
