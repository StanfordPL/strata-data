  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  movq $0x7, %rbx                           #  2     0x5   10     OPC=movq_r64_imm64   
  rorb $0x1, %bh                            #  3     0xf   2      OPC=rorb_rh_one      
  incw %bx                                  #  4     0x11  3      OPC=incw_r16         
  cmovpow %r9w, %bx                         #  5     0x14  5      OPC=cmovpow_r16_r16  
  retq                                      #  6     0x19  1      OPC=retq             
                                                                                       
.size target, .-target
